; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c_mdtruncate.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/smgr/extr_md.c_mdtruncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, %struct.TYPE_10__**, i32 }
%struct.TYPE_10__ = type { i32 }

@InRecovery = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"could not truncate file \22%s\22 to %u blocks: it's only %u blocks now\00", align 1
@RELSEG_SIZE = common dso_local global i32 0, align 4
@WAIT_EVENT_DATA_FILE_TRUNCATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"could not truncate file \22%s\22: %m\00", align 1
@BLCKSZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"could not truncate file \22%s\22 to %u blocks: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdtruncate(%struct.TYPE_9__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @mdnblocks(%struct.TYPE_9__* %12, i64 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %3
  %19 = load i64, i64* @InRecovery, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %156

22:                                               ; preds = %18
  %23 = load i32, i32* @ERROR, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @relpath(i32 %26, i64 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %30)
  %32 = call i32 @ereport(i32 %23, i32 %31)
  br label %33

33:                                               ; preds = %22, %3
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %156

38:                                               ; preds = %33
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %153, %38
  %46 = load i32, i32* %9, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %156

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 %49, 1
  %51 = load i32, i32* @RELSEG_SIZE, align 4
  %52 = mul nsw i32 %50, %51
  store i32 %52, i32* %8, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %55, i64 %56
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i64 %61
  store %struct.TYPE_10__* %62, %struct.TYPE_10__** %10, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %112

66:                                               ; preds = %48
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @WAIT_EVENT_DATA_FILE_TRUNCATE, align 4
  %71 = call i64 @FileTruncate(i32 %69, i32 0, i32 %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = load i32, i32* @ERROR, align 4
  %75 = call i32 (...) @errcode_for_file_access()
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @FilePathName(i32 %78)
  %80 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = call i32 @ereport(i32 %74, i32 %80)
  br label %82

82:                                               ; preds = %73, %66
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %84 = call i32 @SmgrIsTemp(%struct.TYPE_9__* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %82
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %88 = load i64, i64* %5, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %90 = call i32 @register_dirty_segment(%struct.TYPE_9__* %87, i64 %88, %struct.TYPE_10__* %89)
  br label %91

91:                                               ; preds = %86, %82
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %94, align 8
  %96 = load i64, i64* %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %95, i64 %96
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i64 0
  %100 = icmp ne %struct.TYPE_10__* %92, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @Assert(i32 %101)
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @FileClose(i32 %105)
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = load i64, i64* %5, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sub nsw i32 %109, 1
  %111 = call i32 @_fdvec_resize(%struct.TYPE_9__* %107, i64 %108, i32 %110)
  br label %153

112:                                              ; preds = %48
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @RELSEG_SIZE, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32, i32* %6, align 4
  %117 = icmp sgt i32 %115, %116
  br i1 %117, label %118, label %151

118:                                              ; preds = %112
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %8, align 4
  %121 = sub nsw i32 %119, %120
  store i32 %121, i32* %11, align 4
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @BLCKSZ, align 4
  %127 = mul nsw i32 %125, %126
  %128 = load i32, i32* @WAIT_EVENT_DATA_FILE_TRUNCATE, align 4
  %129 = call i64 @FileTruncate(i32 %124, i32 %127, i32 %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %118
  %132 = load i32, i32* @ERROR, align 4
  %133 = call i32 (...) @errcode_for_file_access()
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @FilePathName(i32 %136)
  %138 = load i32, i32* %6, align 4
  %139 = call i32 (i8*, i32, ...) @errmsg(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %137, i32 %138)
  %140 = call i32 @ereport(i32 %132, i32 %139)
  br label %141

141:                                              ; preds = %131, %118
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %143 = call i32 @SmgrIsTemp(%struct.TYPE_9__* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %141
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %147 = load i64, i64* %5, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %149 = call i32 @register_dirty_segment(%struct.TYPE_9__* %146, i64 %147, %struct.TYPE_10__* %148)
  br label %150

150:                                              ; preds = %145, %141
  br label %152

151:                                              ; preds = %112
  br label %156

152:                                              ; preds = %150
  br label %153

153:                                              ; preds = %152, %91
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %9, align 4
  br label %45

156:                                              ; preds = %21, %37, %151, %45
  ret void
}

declare dso_local i32 @mdnblocks(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*, i32, ...) #1

declare dso_local i32 @relpath(i32, i64) #1

declare dso_local i64 @FileTruncate(i32, i32, i32) #1

declare dso_local i32 @errcode_for_file_access(...) #1

declare dso_local i32 @FilePathName(i32) #1

declare dso_local i32 @SmgrIsTemp(%struct.TYPE_9__*) #1

declare dso_local i32 @register_dirty_segment(%struct.TYPE_9__*, i64, %struct.TYPE_10__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @FileClose(i32) #1

declare dso_local i32 @_fdvec_resize(%struct.TYPE_9__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
