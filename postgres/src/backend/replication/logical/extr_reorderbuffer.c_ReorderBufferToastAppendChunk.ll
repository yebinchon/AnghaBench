; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_reorderbuffer.c_ReorderBufferToastAppendChunk.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/replication/logical/extr_reorderbuffer.c_ReorderBufferToastAppendChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64, i64, i32, i64, i32* }

@HASH_ENTER = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"got sequence entry %d for toast chunk %u instead of seq 0\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"got sequence entry %d for toast chunk %u instead of seq %d\00", align 1
@VARHDRSZ = common dso_local global i64 0, align 8
@VARHDRSZ_SHORT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"unexpected type of toast chunk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_14__*, i32, %struct.TYPE_15__*)* @ReorderBufferToastAppendChunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReorderBufferToastAppendChunk(i32* %0, %struct.TYPE_14__* %1, i32 %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %8, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @RelationGetDescr(i32 %18)
  store i32 %19, i32* %15, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %27 = call i32 @ReorderBufferToastInitHash(i32* %25, %struct.TYPE_14__* %26)
  br label %28

28:                                               ; preds = %24, %4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @IsToastRelation(i32 %29)
  %31 = call i32 @Assert(i32 %30)
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  store %struct.TYPE_12__* %36, %struct.TYPE_12__** %10, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %15, align 4
  %40 = call i32 @fastgetattr(i32* %38, i32 1, i32 %39, i32* %13)
  %41 = call i64 @DatumGetObjectId(i32 %40)
  store i64 %41, i64* %16, align 8
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @Assert(i32 %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @fastgetattr(i32* %48, i32 2, i32 %49, i32* %13)
  %51 = call i64 @DatumGetInt32(i32 %50)
  store i64 %51, i64* %17, align 8
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @Assert(i32 %55)
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = bitcast i64* %16 to i8*
  %61 = load i32, i32* @HASH_ENTER, align 4
  %62 = call i64 @hash_search(i32* %59, i8* %60, i32 %61, i32* %11)
  %63 = inttoptr i64 %62 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %63, %struct.TYPE_13__** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %93, label %66

66:                                               ; preds = %28
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %16, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @Assert(i32 %72)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 4
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 5
  store i32* null, i32** %81, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 3
  %84 = call i32 @dlist_init(i32* %83)
  %85 = load i64, i64* %17, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %66
  %88 = load i32, i32* @ERROR, align 4
  %89 = load i64, i64* %17, align 8
  %90 = load i64, i64* %16, align 8
  %91 = call i32 (i32, i8*, ...) @elog(i32 %88, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %89, i64 %90)
  br label %92

92:                                               ; preds = %87, %66
  br label %113

93:                                               ; preds = %28
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %93
  %97 = load i64, i64* %17, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 1
  %102 = icmp ne i64 %97, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %96
  %104 = load i32, i32* @ERROR, align 4
  %105 = load i64, i64* %17, align 8
  %106 = load i64, i64* %16, align 8
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1
  %111 = call i32 (i32, i8*, ...) @elog(i32 %104, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %105, i64 %106, i64 %110)
  br label %112

112:                                              ; preds = %103, %96, %93
  br label %113

113:                                              ; preds = %112, %92
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @fastgetattr(i32* %115, i32 3, i32 %116, i32* %13)
  %118 = call i32 @DatumGetPointer(i32 %117)
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %13, align 4
  %120 = icmp ne i32 %119, 0
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = call i32 @Assert(i32 %122)
  %124 = load i32, i32* %14, align 4
  %125 = call i32 @VARATT_IS_EXTENDED(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %113
  %128 = load i32, i32* %14, align 4
  %129 = call i64 @VARSIZE(i32 %128)
  %130 = load i64, i64* @VARHDRSZ, align 8
  %131 = sub nsw i64 %129, %130
  store i64 %131, i64* %12, align 8
  br label %145

132:                                              ; preds = %113
  %133 = load i32, i32* %14, align 4
  %134 = call i64 @VARATT_IS_SHORT(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i32, i32* %14, align 4
  %138 = call i64 @VARSIZE_SHORT(i32 %137)
  %139 = load i64, i64* @VARHDRSZ_SHORT, align 8
  %140 = sub nsw i64 %138, %139
  store i64 %140, i64* %12, align 8
  br label %144

141:                                              ; preds = %132
  %142 = load i32, i32* @ERROR, align 4
  %143 = call i32 (i32, i8*, ...) @elog(i32 %142, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %136
  br label %145

145:                                              ; preds = %144, %127
  %146 = load i64, i64* %12, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, %146
  store i64 %150, i64* %148, align 8
  %151 = load i64, i64* %17, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, 1
  store i64 %157, i64* %155, align 8
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = call i32 @dlist_push_tail(i32* %159, i32* %161)
  ret void
}

declare dso_local i32 @RelationGetDescr(i32) #1

declare dso_local i32 @ReorderBufferToastInitHash(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @Assert(i32) #1

declare dso_local i32 @IsToastRelation(i32) #1

declare dso_local i64 @DatumGetObjectId(i32) #1

declare dso_local i32 @fastgetattr(i32*, i32, i32, i32*) #1

declare dso_local i64 @DatumGetInt32(i32) #1

declare dso_local i64 @hash_search(i32*, i8*, i32, i32*) #1

declare dso_local i32 @dlist_init(i32*) #1

declare dso_local i32 @elog(i32, i8*, ...) #1

declare dso_local i32 @DatumGetPointer(i32) #1

declare dso_local i32 @VARATT_IS_EXTENDED(i32) #1

declare dso_local i64 @VARSIZE(i32) #1

declare dso_local i64 @VARATT_IS_SHORT(i32) #1

declare dso_local i64 @VARSIZE_SHORT(i32) #1

declare dso_local i32 @dlist_push_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
