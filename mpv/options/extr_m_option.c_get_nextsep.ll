; ModuleID = '/home/carl/AnghaBench/mpv/options/extr_m_option.c_get_nextsep.c'
source_filename = "/home/carl/AnghaBench/mpv/options/extr_m_option.c_get_nextsep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bstr = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i8*, i32 } (%struct.bstr*, i8, i32)* @get_nextsep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i8*, i32 } @get_nextsep(%struct.bstr* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca %struct.bstr, align 8
  %5 = alloca %struct.bstr*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.bstr, align 8
  %9 = alloca %struct.bstr, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.bstr, align 8
  %12 = alloca %struct.bstr, align 8
  %13 = alloca %struct.bstr, align 8
  store %struct.bstr* %0, %struct.bstr** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  %14 = load %struct.bstr*, %struct.bstr** %5, align 8
  %15 = bitcast %struct.bstr* %8 to i8*
  %16 = bitcast %struct.bstr* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false)
  %17 = bitcast %struct.bstr* %9 to i8*
  %18 = bitcast %struct.bstr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 16, i1 false)
  br label %19

19:                                               ; preds = %123, %3
  %20 = load i8, i8* %6, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i8, i8* %6, align 1
  %25 = bitcast %struct.bstr* %8 to { i8*, i32 }*
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %25, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @bstrchr(i8* %27, i32 %29, i8 signext %24)
  br label %32

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %23
  %33 = phi i32 [ %30, %23 ], [ -1, %31 ]
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %100

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 92
  br i1 %45, label %46, label %100

46:                                               ; preds = %36
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %83

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = getelementptr inbounds i8, i8* %54, i64 -1
  %56 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %62, %63
  %65 = call i32 @memmove(i8* %55, i8* %60, i32 %64)
  %66 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %66, align 8
  %69 = load i32, i32* %10, align 4
  %70 = bitcast %struct.bstr* %8 to { i8*, i32 }*
  %71 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %70, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call { i8*, i32 } @bstr_cut(i8* %72, i32 %74, i32 %69)
  %76 = bitcast %struct.bstr* %11 to { i8*, i32 }*
  %77 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %76, i32 0, i32 0
  %78 = extractvalue { i8*, i32 } %75, 0
  store i8* %78, i8** %77, align 8
  %79 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %76, i32 0, i32 1
  %80 = extractvalue { i8*, i32 } %75, 1
  store i32 %80, i32* %79, align 8
  %81 = bitcast %struct.bstr* %8 to i8*
  %82 = bitcast %struct.bstr* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %81, i8* align 8 %82, i64 16, i1 false)
  br label %99

83:                                               ; preds = %46
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  %86 = bitcast %struct.bstr* %8 to { i8*, i32 }*
  %87 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %86, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call { i8*, i32 } @bstr_cut(i8* %88, i32 %90, i32 %85)
  %92 = bitcast %struct.bstr* %12 to { i8*, i32 }*
  %93 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %92, i32 0, i32 0
  %94 = extractvalue { i8*, i32 } %91, 0
  store i8* %94, i8** %93, align 8
  %95 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %92, i32 0, i32 1
  %96 = extractvalue { i8*, i32 } %91, 1
  store i32 %96, i32* %95, align 8
  %97 = bitcast %struct.bstr* %8 to i8*
  %98 = bitcast %struct.bstr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %97, i8* align 8 %98, i64 16, i1 false)
  br label %99

99:                                               ; preds = %83, %49
  br label %123

100:                                              ; preds = %36, %32
  %101 = load i32, i32* %10, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  br label %108

106:                                              ; preds = %100
  %107 = load i32, i32* %10, align 4
  br label %108

108:                                              ; preds = %106, %103
  %109 = phi i32 [ %105, %103 ], [ %107, %106 ]
  %110 = bitcast %struct.bstr* %8 to { i8*, i32 }*
  %111 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %110, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call { i8*, i32 } @bstr_cut(i8* %112, i32 %114, i32 %109)
  %116 = bitcast %struct.bstr* %13 to { i8*, i32 }*
  %117 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %116, i32 0, i32 0
  %118 = extractvalue { i8*, i32 } %115, 0
  store i8* %118, i8** %117, align 8
  %119 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %116, i32 0, i32 1
  %120 = extractvalue { i8*, i32 } %115, 1
  store i32 %120, i32* %119, align 8
  %121 = bitcast %struct.bstr* %8 to i8*
  %122 = bitcast %struct.bstr* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %121, i8* align 8 %122, i64 16, i1 false)
  br label %124

123:                                              ; preds = %99
  br label %19

124:                                              ; preds = %108
  %125 = load %struct.bstr*, %struct.bstr** %5, align 8
  %126 = bitcast %struct.bstr* %125 to i8*
  %127 = bitcast %struct.bstr* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %126, i8* align 8 %127, i64 16, i1 false)
  %128 = getelementptr inbounds %struct.bstr, %struct.bstr* %8, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = getelementptr inbounds %struct.bstr, %struct.bstr* %9, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = ptrtoint i8* %129 to i64
  %133 = ptrtoint i8* %131 to i64
  %134 = sub i64 %132, %133
  %135 = inttoptr i64 %134 to i8*
  %136 = bitcast %struct.bstr* %9 to { i8*, i32 }*
  %137 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %136, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = call { i8*, i32 } @bstr_splice(i8* %138, i32 %140, i32 0, i8* %135)
  %142 = bitcast %struct.bstr* %4 to { i8*, i32 }*
  %143 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %142, i32 0, i32 0
  %144 = extractvalue { i8*, i32 } %141, 0
  store i8* %144, i8** %143, align 8
  %145 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %142, i32 0, i32 1
  %146 = extractvalue { i8*, i32 } %141, 1
  store i32 %146, i32* %145, align 8
  %147 = bitcast %struct.bstr* %4 to { i8*, i32 }*
  %148 = load { i8*, i32 }, { i8*, i32 }* %147, align 8
  ret { i8*, i32 } %148
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bstrchr(i8*, i32, i8 signext) #2

declare dso_local i32 @memmove(i8*, i8*, i32) #2

declare dso_local { i8*, i32 } @bstr_cut(i8*, i32, i32) #2

declare dso_local { i8*, i32 } @bstr_splice(i8*, i32, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
