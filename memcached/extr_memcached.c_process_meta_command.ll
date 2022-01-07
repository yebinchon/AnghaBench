; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_process_meta_command.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_process_meta_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i8*, i64, i8*, %struct.TYPE_18__*, i32, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, i8* }
%struct.TYPE_20__ = type { i32, i64, i32, i32 }

@KEY_TOKEN = common dso_local global i64 0, align 8
@KEY_MAX_LENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"CLIENT_ERROR bad command line format\00", align 1
@DONT_UPDATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ME \00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"exp=%d la=%llu cas=%llu fetch=%s cls=%u size=%lu\0D\0AEN\0D\0A\00", align 1
@current_time = common dso_local global i32 0, align 4
@ITEM_FETCHED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@conn_write = common dso_local global i32 0, align 4
@conn_new_cmd = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"EN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_19__*, i64)* @process_meta_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_meta_command(%struct.TYPE_21__* %0, %struct.TYPE_19__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %13 = icmp ne %struct.TYPE_21__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %17 = load i64, i64* @KEY_TOKEN, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @KEY_MAX_LENGTH, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %25 = call i32 @out_string(%struct.TYPE_21__* %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %166

26:                                               ; preds = %3
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %28 = load i64, i64* @KEY_TOKEN, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %7, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %33 = load i64, i64* @KEY_TOKEN, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %8, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %40 = load i32, i32* @DONT_UPDATE, align 4
  %41 = call %struct.TYPE_20__* @limited_get(i8* %37, i64 %38, %struct.TYPE_21__* %39, i32 0, i32 0, i32 %40)
  store %struct.TYPE_20__* %41, %struct.TYPE_20__** %9, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %43 = icmp ne %struct.TYPE_20__* %42, null
  br i1 %43, label %44, label %143

44:                                               ; preds = %26
  store i64 0, i64* %10, align 8
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @memcpy(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %49 = load i64, i64* %10, align 8
  %50 = add i64 %49, 3
  store i64 %50, i64* %10, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %57 = call i8* @ITEM_key(%struct.TYPE_20__* %56)
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @memcpy(i8* %55, i8* %57, i32 %60)
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %10, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %10, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8 32, i8* %72, align 1
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %10, align 8
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 12
  %87 = sext i32 %86 to i64
  %88 = sub nsw i64 %82, %87
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %44
  br label %101

94:                                               ; preds = %44
  %95 = load i32, i32* @current_time, align 4
  %96 = sext i32 %95 to i64
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %96, %99
  br label %101

101:                                              ; preds = %94, %93
  %102 = phi i64 [ -1, %93 ], [ %100, %94 ]
  %103 = trunc i64 %102 to i32
  %104 = load i32, i32* @current_time, align 4
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = sub nsw i32 %104, %107
  %109 = sext i32 %108 to i64
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %111 = call i64 @ITEM_get_cas(%struct.TYPE_20__* %110)
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @ITEM_FETCHED, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %121 = call i32 @ITEM_clsid(%struct.TYPE_20__* %120)
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %123 = call i64 @ITEM_ntotal(%struct.TYPE_20__* %122)
  %124 = call i64 @snprintf(i8* %79, i64 %88, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %103, i64 %109, i64 %111, i8* %119, i32 %121, i64 %123)
  store i64 %124, i64* %11, align 8
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %126 = call i32 @item_remove(%struct.TYPE_20__* %125)
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* %11, align 8
  %129 = add i64 %127, %128
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 1
  store i64 %129, i64* %131, align 8
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 2
  store i8* %134, i8** %136, align 8
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %138 = load i32, i32* @conn_write, align 4
  %139 = call i32 @conn_set_state(%struct.TYPE_21__* %137, i32 %138)
  %140 = load i32, i32* @conn_new_cmd, align 4
  %141 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 8
  br label %146

143:                                              ; preds = %26
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %145 = call i32 @out_string(%struct.TYPE_21__* %144, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %101
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = call i32 @pthread_mutex_lock(i32* %151)
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 3
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 3
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  %165 = call i32 @pthread_mutex_unlock(i32* %164)
  br label %166

166:                                              ; preds = %146, %23
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @out_string(%struct.TYPE_21__*, i8*) #1

declare dso_local %struct.TYPE_20__* @limited_get(i8*, i64, %struct.TYPE_21__*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @ITEM_key(%struct.TYPE_20__*) #1

declare dso_local i64 @snprintf(i8*, i64, i8*, i32, i64, i64, i8*, i32, i64) #1

declare dso_local i64 @ITEM_get_cas(%struct.TYPE_20__*) #1

declare dso_local i32 @ITEM_clsid(%struct.TYPE_20__*) #1

declare dso_local i64 @ITEM_ntotal(%struct.TYPE_20__*) #1

declare dso_local i32 @item_remove(%struct.TYPE_20__*) #1

declare dso_local i32 @conn_set_state(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
