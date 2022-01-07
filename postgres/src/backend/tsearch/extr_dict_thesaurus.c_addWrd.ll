; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_dict_thesaurus.c_addWrd.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/tsearch/extr_dict_thesaurus.c_addWrd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_6__*, i64, i64, i64 }

@addWrd.nres = internal global i32 0, align 4
@addWrd.ntres = internal global i32 0, align 4
@DT_USEASIS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, i8*, i32, i64, i64, i32)* @addWrd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @addWrd(%struct.TYPE_7__* %0, i8* %1, i8* %2, i32 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load i64, i64* %12, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %62

18:                                               ; preds = %7
  store i32 0, i32* @addWrd.ntres, align 4
  store i32 0, i32* @addWrd.nres, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %18
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 16, i32* %31, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = mul i64 40, %35
  %37 = trunc i64 %36 to i32
  %38 = call i8* @palloc(i32 %37)
  %39 = bitcast i8* %38 to %struct.TYPE_6__*
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %41, align 8
  br label %60

42:                                               ; preds = %24
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %45, 2
  store i32 %46, i32* %44, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = mul i64 40, %53
  %55 = trunc i64 %54 to i32
  %56 = call i64 @repalloc(%struct.TYPE_6__* %49, i32 %55)
  %57 = inttoptr i64 %56 to %struct.TYPE_6__*
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %59, align 8
  br label %60

60:                                               ; preds = %42, %29
  br label %61

61:                                               ; preds = %60, %18
  br label %62

62:                                               ; preds = %61, %7
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %15, align 8
  %69 = load i64, i64* %13, align 8
  %70 = sub nsw i64 %69, 1
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 4
  store i64 %70, i64* %72, align 8
  %73 = load i32, i32* @addWrd.nres, align 4
  %74 = add nsw i32 %73, 1
  %75 = load i32, i32* @addWrd.ntres, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %104

77:                                               ; preds = %62
  %78 = load i32, i32* @addWrd.ntres, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  store i32 2, i32* @addWrd.ntres, align 4
  %81 = load i32, i32* @addWrd.ntres, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 40, %82
  %84 = trunc i64 %83 to i32
  %85 = call i8* @palloc(i32 %84)
  %86 = bitcast i8* %85 to %struct.TYPE_6__*
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  store %struct.TYPE_6__* %86, %struct.TYPE_6__** %88, align 8
  br label %103

89:                                               ; preds = %77
  %90 = load i32, i32* @addWrd.ntres, align 4
  %91 = mul nsw i32 %90, 2
  store i32 %91, i32* @addWrd.ntres, align 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = load i32, i32* @addWrd.ntres, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 40, %96
  %98 = trunc i64 %97 to i32
  %99 = call i64 @repalloc(%struct.TYPE_6__* %94, i32 %98)
  %100 = inttoptr i64 %99 to %struct.TYPE_6__*
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  store %struct.TYPE_6__* %100, %struct.TYPE_6__** %102, align 8
  br label %103

103:                                              ; preds = %89, %80
  br label %104

104:                                              ; preds = %103, %62
  %105 = load i8*, i8** %10, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = add nsw i64 %109, 1
  %111 = trunc i64 %110 to i32
  %112 = call i8* @palloc(i32 %111)
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load i32, i32* @addWrd.nres, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store i8* %112, i8** %119, align 8
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = load i32, i32* @addWrd.nres, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = load i8*, i8** %10, align 8
  %130 = load i8*, i8** %9, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  %135 = call i32 @memcpy(i8* %127, i8* %128, i32 %134)
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load i32, i32* @addWrd.nres, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = load i8*, i8** %10, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = ptrtoint i8* %144 to i64
  %147 = ptrtoint i8* %145 to i64
  %148 = sub i64 %146, %147
  %149 = getelementptr inbounds i8, i8* %143, i64 %148
  store i8 0, i8* %149, align 1
  %150 = load i64, i64* %12, align 8
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = load i32, i32* @addWrd.nres, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 3
  store i64 %150, i64* %157, align 8
  %158 = load i32, i32* %14, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %104
  %161 = load i64, i64* @DT_USEASIS, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = load i32, i32* @addWrd.nres, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  store i64 %161, i64* %168, align 8
  br label %177

169:                                              ; preds = %104
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = load i32, i32* @addWrd.nres, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 2
  store i64 0, i64* %176, align 8
  br label %177

177:                                              ; preds = %169, %160
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = load i32, i32* @addWrd.nres, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* @addWrd.nres, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  store i8* null, i8** %185, align 8
  ret void
}

declare dso_local i8* @palloc(i32) #1

declare dso_local i64 @repalloc(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
