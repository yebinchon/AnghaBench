; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_custom.c__PrintTocData.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/pg_dump/extr_pg_backup_custom.c__PrintTocData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_15__, i32, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32 }

@K_OFFSET_NO_DATA = common dso_local global i64 0, align 8
@K_OFFSET_POS_NOT_SET = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"unrecognized data block type (%d) while searching archive\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"error during file seek: %m\00", align 1
@.str.2 = private unnamed_addr constant [150 x i8] c"could not find block ID %d in archive -- possibly due to out-of-order restore request, which cannot be handled due to lack of data offsets in archive\00", align 1
@.str.3 = private unnamed_addr constant [142 x i8] c"could not find block ID %d in archive -- possibly due to out-of-order restore request, which cannot be handled due to non-seekable input file\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"could not find block ID %d in archive -- possibly corrupt archive\00", align 1
@.str.5 = private unnamed_addr constant [64 x i8] c"found unexpected block ID (%d) when reading data -- expected %d\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"unrecognized data block type %d while restoring archive\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_18__*)* @_PrintTocData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_PrintTocData(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %4, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %12, %struct.TYPE_17__** %5, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %6, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @K_OFFSET_NO_DATA, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %140

23:                                               ; preds = %2
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @K_OFFSET_POS_NOT_SET, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %64

34:                                               ; preds = %28, %23
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %36 = call i32 @_readBlockHeader(%struct.TYPE_19__* %35, i32* %7, i32* %8)
  br label %37

37:                                               ; preds = %60, %34
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @EOF, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %42, %45
  br label %47

47:                                               ; preds = %41, %37
  %48 = phi i1 [ false, %37 ], [ %46, %41 ]
  br i1 %48, label %49, label %63

49:                                               ; preds = %47
  %50 = load i32, i32* %7, align 4
  switch i32 %50, label %57 [
    i32 128, label %51
    i32 129, label %54
  ]

51:                                               ; preds = %49
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %53 = call i32 @_skipData(%struct.TYPE_19__* %52)
  br label %60

54:                                               ; preds = %49
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %56 = call i32 @_skipBlobs(%struct.TYPE_19__* %55)
  br label %60

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %57, %54, %51
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %62 = call i32 @_readBlockHeader(%struct.TYPE_19__* %61, i32* %7, i32* %8)
  br label %37

63:                                               ; preds = %47
  br label %79

64:                                               ; preds = %28
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @SEEK_SET, align 4
  %72 = call i64 @fseeko(i32 %67, i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %64
  %75 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %64
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %78 = call i32 @_readBlockHeader(%struct.TYPE_19__* %77, i32* %7, i32* %8)
  br label %79

79:                                               ; preds = %76, %63
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @EOF, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %111

83:                                               ; preds = %79
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @K_OFFSET_POS_NOT_SET, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %110

94:                                               ; preds = %83
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  br label %109

104:                                              ; preds = %94
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %104, %99
  br label %110

110:                                              ; preds = %109, %89
  br label %111

111:                                              ; preds = %110, %79
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %112, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.5, i64 0, i64 0), i32 %118, i32 %121)
  br label %123

123:                                              ; preds = %117, %111
  %124 = load i32, i32* %7, align 4
  switch i32 %124, label %137 [
    i32 128, label %125
    i32 129, label %128
  ]

125:                                              ; preds = %123
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %127 = call i32 @_PrintData(%struct.TYPE_19__* %126)
  br label %140

128:                                              ; preds = %123
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @_LoadBlobs(%struct.TYPE_19__* %129, i32 %135)
  br label %140

137:                                              ; preds = %123
  %138 = load i32, i32* %7, align 4
  %139 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %22, %137, %128, %125
  ret void
}

declare dso_local i32 @_readBlockHeader(%struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i32 @_skipData(%struct.TYPE_19__*) #1

declare dso_local i32 @_skipBlobs(%struct.TYPE_19__*) #1

declare dso_local i32 @fatal(i8*, ...) #1

declare dso_local i64 @fseeko(i32, i32, i32) #1

declare dso_local i32 @_PrintData(%struct.TYPE_19__*) #1

declare dso_local i32 @_LoadBlobs(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
