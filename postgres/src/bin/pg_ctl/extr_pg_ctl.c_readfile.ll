; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_readfile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_ctl/extr_pg_ctl.c_readfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*, i32*)* @readfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @readfile(i8* %0, i32* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.stat, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  store i32 0, i32* %17, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* @O_RDONLY, align 4
  %20 = load i32, i32* @PG_BINARY, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @open(i8* %18, i32 %21, i32 0)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i8** null, i8*** %3, align 8
  br label %166

26:                                               ; preds = %2
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @fstat(i32 %27, %struct.stat* %14)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @close(i32 %31)
  store i8** null, i8*** %3, align 8
  br label %166

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @close(i32 %38)
  %40 = call i8* @pg_malloc(i32 8)
  %41 = bitcast i8* %40 to i8**
  store i8** %41, i8*** %8, align 8
  %42 = load i8**, i8*** %8, align 8
  store i8* null, i8** %42, align 8
  %43 = load i8**, i8*** %8, align 8
  store i8** %43, i8*** %3, align 8
  br label %166

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i8* @pg_malloc(i32 %47)
  store i8* %48, i8** %9, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i32 @read(i32 %49, i8* %50, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @close(i32 %55)
  %57 = load i32, i32* %13, align 4
  %58 = getelementptr inbounds %struct.stat, %struct.stat* %14, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %44
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @free(i8* %62)
  store i8** null, i8*** %3, align 8
  br label %166

64:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %81, %64
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load i8*, i8** %9, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 10
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %77, %69
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %65

84:                                               ; preds = %65
  %85 = load i32, i32* %7, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 8
  %89 = trunc i64 %88 to i32
  %90 = call i8* @pg_malloc(i32 %89)
  %91 = bitcast i8* %90 to i8**
  store i8** %91, i8*** %8, align 8
  %92 = load i32, i32* %7, align 4
  %93 = load i32*, i32** %5, align 8
  store i32 %92, i32* %93, align 4
  %94 = load i8*, i8** %9, align 8
  store i8* %94, i8** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %155, %84
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %158

99:                                               ; preds = %95
  %100 = load i8*, i8** %9, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 10
  br i1 %106, label %107, label %154

107:                                              ; preds = %99
  %108 = load i8*, i8** %9, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8*, i8** %10, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %15, align 4
  %118 = add nsw i32 %117, 1
  %119 = call i8* @pg_malloc(i32 %118)
  store i8* %119, i8** %16, align 8
  %120 = load i8*, i8** %16, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = load i32, i32* %15, align 4
  %123 = call i32 @memcpy(i8* %120, i8* %121, i32 %122)
  %124 = load i32, i32* %15, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %107
  %127 = load i8*, i8** %16, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %127, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 13
  br i1 %134, label %135, label %138

135:                                              ; preds = %126
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %15, align 4
  br label %138

138:                                              ; preds = %135, %126, %107
  %139 = load i8*, i8** %16, align 8
  %140 = load i32, i32* %15, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  store i8 0, i8* %142, align 1
  %143 = load i8*, i8** %16, align 8
  %144 = load i8**, i8*** %8, align 8
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8*, i8** %144, i64 %147
  store i8* %143, i8** %148, align 8
  %149 = load i8*, i8** %9, align 8
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %149, i64 %152
  store i8* %153, i8** %10, align 8
  br label %154

154:                                              ; preds = %138, %99
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %11, align 4
  br label %95

158:                                              ; preds = %95
  %159 = load i8**, i8*** %8, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8*, i8** %159, i64 %161
  store i8* null, i8** %162, align 8
  %163 = load i8*, i8** %9, align 8
  %164 = call i32 @free(i8* %163)
  %165 = load i8**, i8*** %8, align 8
  store i8** %165, i8*** %3, align 8
  br label %166

166:                                              ; preds = %158, %61, %37, %30, %25
  %167 = load i8**, i8*** %3, align 8
  ret i8** %167
}

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i8* @pg_malloc(i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
