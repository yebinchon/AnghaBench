; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_process_delete_command.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_process_delete_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_22__*, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_23__ = type { i8*, i64 }
%struct.TYPE_24__ = type { i32 }

@KEY_TOKEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"CLIENT_ERROR bad command line format.  Usage: delete <key> [noreply]\00", align 1
@KEY_MAX_LENGTH = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"CLIENT_ERROR bad command line format\00", align 1
@settings = common dso_local global %struct.TYPE_26__ zeroinitializer, align 8
@DONT_UPDATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"DELETED\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"NOT_FOUND\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*, %struct.TYPE_23__*, i64)* @process_delete_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_delete_command(%struct.TYPE_25__* %0, %struct.TYPE_23__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %15 = icmp ne %struct.TYPE_25__* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i64, i64* %6, align 8
  %19 = icmp ugt i64 %18, 3
  br i1 %19, label %20, label %63

20:                                               ; preds = %3
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %22 = load i32, i32* @KEY_TOKEN, align 4
  %23 = add nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @set_noreply_maybe(%struct.TYPE_25__* %31, %struct.TYPE_23__* %32, i64 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %35, 4
  br i1 %36, label %37, label %43

37:                                               ; preds = %20
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %40, %20
  %44 = load i64, i64* %6, align 8
  %45 = icmp eq i64 %44, 5
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %49, %46, %43
  %53 = phi i1 [ false, %46 ], [ false, %43 ], [ %51, %49 ]
  br label %54

54:                                               ; preds = %52, %40, %37
  %55 = phi i1 [ true, %40 ], [ true, %37 ], [ %53, %52 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %61 = call i32 @out_string(%struct.TYPE_25__* %60, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  br label %170

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %3
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %65 = load i32, i32* @KEY_TOKEN, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  store i8* %69, i8** %7, align 8
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %71 = load i32, i32* @KEY_TOKEN, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* @KEY_MAX_LENGTH, align 8
  %78 = icmp ugt i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %63
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %81 = call i32 @out_string(%struct.TYPE_25__* %80, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %170

82:                                               ; preds = %63
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_26__, %struct.TYPE_26__* @settings, i32 0, i32 0), align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i8*, i8** %7, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @stats_prefix_record_delete(i8* %86, i64 %87)
  br label %89

89:                                               ; preds = %85, %82
  %90 = load i8*, i8** %7, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %93 = load i32, i32* @DONT_UPDATE, align 4
  %94 = call %struct.TYPE_24__* @item_get_locked(i8* %90, i64 %91, %struct.TYPE_25__* %92, i32 %93, i32* %10)
  store %struct.TYPE_24__* %94, %struct.TYPE_24__** %9, align 8
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %96 = icmp ne %struct.TYPE_24__* %95, null
  br i1 %96, label %97, label %145

97:                                               ; preds = %89
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %102 = call i32 @ITEM_key(%struct.TYPE_24__* %101)
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @MEMCACHED_COMMAND_DELETE(i32 %100, i32 %102, i32 %105)
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  %112 = call i32 @pthread_mutex_lock(i32* %111)
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %117, align 8
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %120 = call i64 @ITEM_clsid(%struct.TYPE_24__* %119)
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = call i32 @pthread_mutex_unlock(i32* %129)
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @do_item_unlink(%struct.TYPE_24__* %131, i32 %132)
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %140 = call i32 @STORAGE_delete(i32 %138, %struct.TYPE_24__* %139)
  %141 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %142 = call i32 @do_item_remove(%struct.TYPE_24__* %141)
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %144 = call i32 @out_string(%struct.TYPE_25__* %143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %167

145:                                              ; preds = %89
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 0
  %151 = call i32 @pthread_mutex_lock(i32* %150)
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 0
  %164 = call i32 @pthread_mutex_unlock(i32* %163)
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %166 = call i32 @out_string(%struct.TYPE_25__* %165, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %167

167:                                              ; preds = %145, %97
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @item_unlock(i32 %168)
  br label %170

170:                                              ; preds = %167, %79, %59
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @set_noreply_maybe(%struct.TYPE_25__*, %struct.TYPE_23__*, i64) #1

declare dso_local i32 @out_string(%struct.TYPE_25__*, i8*) #1

declare dso_local i32 @stats_prefix_record_delete(i8*, i64) #1

declare dso_local %struct.TYPE_24__* @item_get_locked(i8*, i64, %struct.TYPE_25__*, i32, i32*) #1

declare dso_local i32 @MEMCACHED_COMMAND_DELETE(i32, i32, i32) #1

declare dso_local i32 @ITEM_key(%struct.TYPE_24__*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @ITEM_clsid(%struct.TYPE_24__*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @do_item_unlink(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @STORAGE_delete(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @do_item_remove(%struct.TYPE_24__*) #1

declare dso_local i32 @item_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
