; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_aset.c_AllocSetStats.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/mmgr/extr_aset.c_AllocSetStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__**, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_9__ = type { i8*, i8*, %struct.TYPE_9__* }

@ALLOCSET_NUM_FREELISTS = common dso_local global i32 0, align 4
@ALLOC_CHUNKHDRSZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"%zu total in %zd blocks; %zu free (%zd chunks); %zu used\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32 (i32, i8*, i8*)*, i8*, %struct.TYPE_6__*)* @AllocSetStats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AllocSetStats(i32 %0, i32 (i32, i8*, i8*)* %1, i8* %2, %struct.TYPE_6__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32 (i32, i8*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca [200 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i32 (i32, i8*, i8*)* %1, i32 (i32, i8*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %8, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %20, %struct.TYPE_7__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %21 = call i32 @MAXALIGN(i32 4)
  store i32 %21, i32* %12, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %14, align 8
  br label %25

25:                                               ; preds = %56, %4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %27 = icmp ne %struct.TYPE_9__* %26, null
  br i1 %27, label %28, label %60

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %10, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %35 = bitcast %struct.TYPE_9__* %34 to i8*
  %36 = ptrtoint i8* %33 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %40, %38
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %12, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %45 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %28
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %14, align 8
  br label %25

60:                                               ; preds = %25
  store i32 0, i32* %15, align 4
  br label %61

61:                                               ; preds = %92, %60
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @ALLOCSET_NUM_FREELISTS, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %95

65:                                               ; preds = %61
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %67, align 8
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %68, i64 %70
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  store %struct.TYPE_8__* %72, %struct.TYPE_8__** %16, align 8
  br label %73

73:                                               ; preds = %86, %65
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %75 = icmp ne %struct.TYPE_8__* %74, null
  br i1 %75, label %76, label %91

76:                                               ; preds = %73
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ALLOC_CHUNKHDRSZ, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %13, align 4
  br label %86

86:                                               ; preds = %76
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %90, %struct.TYPE_8__** %16, align 8
  br label %73

91:                                               ; preds = %73
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %15, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %15, align 4
  br label %61

95:                                               ; preds = %61
  %96 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %6, align 8
  %97 = icmp ne i32 (i32, i8*, i8*)* %96, null
  br i1 %97, label %98, label %113

98:                                               ; preds = %95
  %99 = getelementptr inbounds [200 x i8], [200 x i8]* %17, i64 0, i64 0
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %13, align 4
  %106 = sub nsw i32 %104, %105
  %107 = call i32 @snprintf(i8* %99, i32 200, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %101, i32 %102, i32 %103, i32 %106)
  %108 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** %6, align 8
  %109 = load i32, i32* %5, align 4
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds [200 x i8], [200 x i8]* %17, i64 0, i64 0
  %112 = call i32 %108(i32 %109, i8* %110, i8* %111)
  br label %113

113:                                              ; preds = %98, %95
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %115 = icmp ne %struct.TYPE_6__* %114, null
  br i1 %115, label %116, label %137

116:                                              ; preds = %113
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, %127
  store i32 %131, i32* %129, align 4
  %132 = load i32, i32* %13, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %116, %113
  ret void
}

declare dso_local i32 @MAXALIGN(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
