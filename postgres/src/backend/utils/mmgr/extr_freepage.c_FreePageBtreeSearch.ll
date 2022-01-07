; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_freepage.c_FreePageBtreeSearch.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_freepage.c_FreePageBtreeSearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_17__, %struct.TYPE_15__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_15__ = type { i64, i64, i32 }

@FREE_PAGE_INTERNAL_MAGIC = common dso_local global i64 0, align 8
@FPM_ITEMS_PER_INTERNAL_PAGE = common dso_local global i64 0, align 8
@FPM_ITEMS_PER_LEAF_PAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i64, %struct.TYPE_19__*)* @FreePageBtreeSearch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FreePageBtreeSearch(%struct.TYPE_18__* %0, i64 %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %6, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %13 = call i8* @fpm_segment_base(%struct.TYPE_18__* %12)
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_20__* @relptr_access(i8* %14, i32 %17)
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %8, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %22 = icmp eq %struct.TYPE_20__* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 3
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %25, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  br label %176

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %91, %28
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FREE_PAGE_INTERNAL_MAGIC, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %121

36:                                               ; preds = %29
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @FreePageBtreeSearchInternal(%struct.TYPE_20__* %37, i64 %38)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ult i64 %40, %44
  br i1 %45, label %46, label %57

46:                                               ; preds = %36
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = icmp eq i64 %54, %55
  br label %57

57:                                               ; preds = %46, %36
  %58 = phi i1 [ false, %36 ], [ %56, %46 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = load i64, i64* %9, align 8
  %64 = icmp ugt i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i64, i64* %9, align 8
  %67 = add i64 %66, -1
  store i64 %67, i64* %9, align 8
  br label %68

68:                                               ; preds = %65, %62, %57
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @FPM_ITEMS_PER_INTERNAL_PAGE, align 8
  %74 = icmp uge i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %68
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @FPM_ITEMS_PER_INTERNAL_PAGE, align 8
  %81 = icmp eq i64 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i32 @Assert(i32 %82)
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  br label %91

88:                                               ; preds = %68
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %75
  %92 = load i64, i64* %9, align 8
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ult i64 %92, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @Assert(i32 %98)
  %100 = load i8*, i8** %7, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call %struct.TYPE_20__* @relptr_access(i8* %100, i32 %108)
  store %struct.TYPE_20__* %109, %struct.TYPE_20__** %10, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call %struct.TYPE_20__* @relptr_access(i8* %110, i32 %114)
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %117 = icmp eq %struct.TYPE_20__* %115, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @Assert(i32 %118)
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  store %struct.TYPE_20__* %120, %struct.TYPE_20__** %8, align 8
  br label %29

121:                                              ; preds = %29
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @FPM_ITEMS_PER_LEAF_PAGE, align 8
  %127 = icmp uge i64 %125, %126
  br i1 %127, label %128, label %141

128:                                              ; preds = %121
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @FPM_ITEMS_PER_INTERNAL_PAGE, align 8
  %134 = icmp eq i64 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @Assert(i32 %135)
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  br label %144

141:                                              ; preds = %121
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  store i32 0, i32* %143, align 8
  br label %144

144:                                              ; preds = %141, %128
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %146 = load i64, i64* %5, align 8
  %147 = call i64 @FreePageBtreeSearchLeaf(%struct.TYPE_20__* %145, i64 %146)
  store i64 %147, i64* %9, align 8
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 3
  store %struct.TYPE_20__* %148, %struct.TYPE_20__** %150, align 8
  %151 = load i64, i64* %9, align 8
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 2
  store i64 %151, i64* %153, align 8
  %154 = load i64, i64* %9, align 8
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ult i64 %154, %158
  br i1 %159, label %160, label %171

160:                                              ; preds = %144
  %161 = load i64, i64* %5, align 8
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = load i64, i64* %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %161, %169
  br label %171

171:                                              ; preds = %160, %144
  %172 = phi i1 [ false, %144 ], [ %170, %160 ]
  %173 = zext i1 %172 to i32
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  br label %176

176:                                              ; preds = %171, %23
  ret void
}

declare dso_local i8* @fpm_segment_base(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_20__* @relptr_access(i8*, i32) #1

declare dso_local i64 @FreePageBtreeSearchInternal(%struct.TYPE_20__*, i64) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i64 @FreePageBtreeSearchLeaf(%struct.TYPE_20__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
