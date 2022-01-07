; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fci.c_add_data_block.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/cabinet/extr_fci.c_add_data_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 (%struct.TYPE_9__*)*, i64 (i32, i32, i64, i32*, i32)*, i32, i32, i32, i32, %struct.TYPE_8__, i32, i64, i32 (%struct.data_block*)*, i32, %struct.TYPE_10__, %struct.data_block* (i32)* }
%struct.TYPE_8__ = type { i64 }
%struct.data_block = type { i64, i64, i32 }
%struct.TYPE_10__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FCIERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@ERROR_NOT_ENOUGH_MEMORY = common dso_local global i32 0, align 4
@FCIERR_TEMP_FILE = common dso_local global i32 0, align 4
@statusFile = common dso_local global i32 0, align 4
@FCIERR_USER_ABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32 (i32, i64, i64, i32)*)* @add_data_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_data_block(%struct.TYPE_9__* %0, i32 (i32, i64, i64, i32)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32 (i32, i64, i64, i32)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.data_block*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 (i32, i64, i64, i32)* %1, i32 (i32, i64, i64, i32)** %5, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @TRUE, align 4
  store i32 %13, i32* %3, align 4
  br label %141

14:                                               ; preds = %2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 11
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 11
  %24 = call i32 @create_temp_file(%struct.TYPE_9__* %21, %struct.TYPE_10__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %3, align 4
  br label %141

28:                                               ; preds = %20, %14
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 12
  %31 = load %struct.data_block* (i32)*, %struct.data_block* (i32)** %30, align 8
  %32 = call %struct.data_block* %31(i32 24)
  store %struct.data_block* %32, %struct.data_block** %7, align 8
  %33 = icmp ne %struct.data_block* %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = load i32, i32* @FCIERR_ALLOC_FAIL, align 4
  %37 = load i32, i32* @ERROR_NOT_ENOUGH_MEMORY, align 4
  %38 = call i32 @set_error(%struct.TYPE_9__* %35, i32 %36, i32 %37)
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %3, align 4
  br label %141

40:                                               ; preds = %28
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.data_block*, %struct.data_block** %7, align 8
  %45 = getelementptr inbounds %struct.data_block, %struct.data_block* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64 (%struct.TYPE_9__*)*, i64 (%struct.TYPE_9__*)** %47, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = call i64 %48(%struct.TYPE_9__* %49)
  %51 = load %struct.data_block*, %struct.data_block** %7, align 8
  %52 = getelementptr inbounds %struct.data_block, %struct.data_block* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i64 (i32, i32, i64, i32*, i32)*, i64 (i32, i32, i64, i32*, i32)** %54, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 11
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.data_block*, %struct.data_block** %7, align 8
  %64 = getelementptr inbounds %struct.data_block, %struct.data_block* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i64 %55(i32 %59, i32 %62, i64 %65, i32* %6, i32 %68)
  %70 = load %struct.data_block*, %struct.data_block** %7, align 8
  %71 = getelementptr inbounds %struct.data_block, %struct.data_block* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %40
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = load i32, i32* @FCIERR_TEMP_FILE, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @set_error(%struct.TYPE_9__* %75, i32 %76, i32 %77)
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 9
  %81 = load i32 (%struct.data_block*)*, i32 (%struct.data_block*)** %80, align 8
  %82 = load %struct.data_block*, %struct.data_block** %7, align 8
  %83 = call i32 %81(%struct.data_block* %82)
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %3, align 4
  br label %141

85:                                               ; preds = %40
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 8
  store i64 0, i64* %87, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add i64 4, %91
  %93 = load %struct.data_block*, %struct.data_block** %7, align 8
  %94 = getelementptr inbounds %struct.data_block, %struct.data_block* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %92, %95
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = add i64 %100, %96
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %98, align 8
  %103 = load %struct.data_block*, %struct.data_block** %7, align 8
  %104 = getelementptr inbounds %struct.data_block, %struct.data_block* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %105
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %107, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 3
  %118 = load %struct.data_block*, %struct.data_block** %7, align 8
  %119 = getelementptr inbounds %struct.data_block, %struct.data_block* %118, i32 0, i32 2
  %120 = call i32 @list_add_tail(i32* %117, i32* %119)
  %121 = load i32 (i32, i64, i64, i32)*, i32 (i32, i64, i64, i32)** %5, align 8
  %122 = load i32, i32* @statusFile, align 4
  %123 = load %struct.data_block*, %struct.data_block** %7, align 8
  %124 = getelementptr inbounds %struct.data_block, %struct.data_block* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.data_block*, %struct.data_block** %7, align 8
  %127 = getelementptr inbounds %struct.data_block, %struct.data_block* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 %121(i32 %122, i64 %125, i64 %128, i32 %131)
  %133 = icmp eq i32 %132, -1
  br i1 %133, label %134, label %139

134:                                              ; preds = %85
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %136 = load i32, i32* @FCIERR_USER_ABORT, align 4
  %137 = call i32 @set_error(%struct.TYPE_9__* %135, i32 %136, i32 0)
  %138 = load i32, i32* @FALSE, align 4
  store i32 %138, i32* %3, align 4
  br label %141

139:                                              ; preds = %85
  %140 = load i32, i32* @TRUE, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %139, %134, %74, %34, %26, %12
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @create_temp_file(%struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @set_error(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
