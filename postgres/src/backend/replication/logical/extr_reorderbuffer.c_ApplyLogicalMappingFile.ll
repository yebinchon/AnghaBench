; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_reorderbuffer.c_ApplyLogicalMappingFile.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_reorderbuffer.c_ApplyLogicalMappingFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64, i64, i32 }

@MAXPGPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"pg_logical/mappings/%s\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"could not open file \22%s\22: %m\00", align 1
@WAIT_EVENT_REORDER_LOGICAL_MAPPING_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"could not read file \22%s\22: %m\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"could not read from file \22%s\22: read %d instead of %d bytes\00", align 1
@HASH_FIND = common dso_local global i32 0, align 4
@HASH_ENTER = common dso_local global i32 0, align 4
@InvalidCommandId = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"could not close file \22%s\22: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*)* @ApplyLogicalMappingFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ApplyLogicalMappingFile(i32* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__, align 4
  %12 = alloca %struct.TYPE_6__, align 4
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %16 = load i32, i32* @MAXPGPATH, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @sprintf(i8* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @O_RDONLY, align 4
  %23 = load i32, i32* @PG_BINARY, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @OpenTransientFile(i8* %19, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load i32, i32* @ERROR, align 4
  %30 = call i32 (...) @errcode_for_file_access()
  %31 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %32 = call i32 @ereport(i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %28, %3
  br label %34

34:                                               ; preds = %145, %79, %33
  br label %35

35:                                               ; preds = %34
  %36 = call i32 @memset(%struct.TYPE_6__* %12, i32 0, i32 8)
  %37 = load i32, i32* @WAIT_EVENT_REORDER_LOGICAL_MAPPING_READ, align 4
  %38 = call i32 @pgstat_report_wait_start(i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @read(i32 %39, %struct.TYPE_8__* %11, i32 16)
  store i32 %40, i32* %10, align 4
  %41 = call i32 (...) @pgstat_report_wait_end()
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load i32, i32* @ERROR, align 4
  %46 = call i32 (...) @errcode_for_file_access()
  %47 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i8* %19)
  %48 = call i32 @ereport(i32 %45, i32 %47)
  br label %65

49:                                               ; preds = %35
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %146

53:                                               ; preds = %49
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ne i64 %55, 16
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load i32, i32* @ERROR, align 4
  %59 = call i32 (...) @errcode_for_file_access()
  %60 = load i32, i32* %10, align 4
  %61 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i8* %19, i32 %60, i32 16)
  %62 = call i32 @ereport(i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %57, %53
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64, %44
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %71 = call i32 @ItemPointerCopy(i32* %69, i32* %70)
  %72 = load i32*, i32** %4, align 8
  %73 = bitcast %struct.TYPE_6__* %12 to i8*
  %74 = load i32, i32* @HASH_FIND, align 4
  %75 = call i64 @hash_search(i32* %72, i8* %73, i32 %74, i32* null)
  %76 = inttoptr i64 %75 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %13, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %78 = icmp ne %struct.TYPE_7__* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %65
  br label %34

80:                                               ; preds = %65
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %86 = call i32 @ItemPointerCopy(i32* %84, i32* %85)
  %87 = load i32*, i32** %4, align 8
  %88 = bitcast %struct.TYPE_6__* %12 to i8*
  %89 = load i32, i32* @HASH_ENTER, align 4
  %90 = call i64 @hash_search(i32* %87, i8* %88, i32 %89, i32* %15)
  %91 = inttoptr i64 %90 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %91, %struct.TYPE_7__** %14, align 8
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %129

94:                                               ; preds = %80
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @InvalidCommandId, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %108, label %100

100:                                              ; preds = %94
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %103, %106
  br label %108

108:                                              ; preds = %100, %94
  %109 = phi i1 [ true, %94 ], [ %107, %100 ]
  %110 = zext i1 %109 to i32
  %111 = call i32 @Assert(i32 %110)
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @InvalidCommandId, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %125, label %117

117:                                              ; preds = %108
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %120, %123
  br label %125

125:                                              ; preds = %117, %108
  %126 = phi i1 [ true, %108 ], [ %124, %117 ]
  %127 = zext i1 %126 to i32
  %128 = call i32 @Assert(i32 %127)
  br label %145

129:                                              ; preds = %80
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  store i64 %137, i64* %139, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %129, %125
  br label %34

146:                                              ; preds = %52
  %147 = load i32, i32* %9, align 4
  %148 = call i64 @CloseTransientFile(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %146
  %151 = load i32, i32* @ERROR, align 4
  %152 = call i32 (...) @errcode_for_file_access()
  %153 = call i32 (i8*, i8*, ...) @errmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %19)
  %154 = call i32 @ereport(i32 %151, i32 %153)
  br label %155

155:                                              ; preds = %150, %146
  %156 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %156)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @OpenTransientFile(i8*, i32) #2

declare dso_local i32 @ereport(i32, i32) #2

declare dso_local i32 @errcode_for_file_access(...) #2

declare dso_local i32 @errmsg(i8*, i8*, ...) #2

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @pgstat_report_wait_start(i32) #2

declare dso_local i32 @read(i32, %struct.TYPE_8__*, i32) #2

declare dso_local i32 @pgstat_report_wait_end(...) #2

declare dso_local i32 @ItemPointerCopy(i32*, i32*) #2

declare dso_local i64 @hash_search(i32*, i8*, i32, i32*) #2

declare dso_local i32 @Assert(i32) #2

declare dso_local i64 @CloseTransientFile(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
