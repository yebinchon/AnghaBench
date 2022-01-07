; ModuleID = '/home/carl/AnghaBench/memcached/extr_memcached.c_process_bin_delete.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_memcached.c_process_bin_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i64 }
%struct.TYPE_28__ = type { %struct.TYPE_37__*, i32, %struct.TYPE_31__ }
%struct.TYPE_37__ = type { %struct.TYPE_36__, i32 }
%struct.TYPE_36__ = type { i32, i32, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_38__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32 }

@settings = common dso_local global %struct.TYPE_29__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Deleting \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DONT_UPDATE = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS = common dso_local global i32 0, align 4
@PROTOCOL_BINARY_RESPONSE_KEY_ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_28__*)* @process_bin_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_bin_delete(%struct.TYPE_28__* %0) #0 {
  %2 = alloca %struct.TYPE_28__*, align 8
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_38__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %2, align 8
  %10 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %11 = call %struct.TYPE_38__* @binary_get_request(%struct.TYPE_28__* %10)
  store %struct.TYPE_38__* %11, %struct.TYPE_38__** %5, align 8
  %12 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %13 = call i8* @binary_get_key(%struct.TYPE_28__* %12)
  store i8* %13, i8** %6, align 8
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %20 = icmp ne %struct.TYPE_28__* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @settings, i32 0, i32 0), align 8
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %48

25:                                               ; preds = %1
  %26 = load i32, i32* @stderr, align 4
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %42, %25
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %7, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %28

45:                                               ; preds = %28
  %46 = load i32, i32* @stderr, align 4
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %1
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_29__, %struct.TYPE_29__* @settings, i32 0, i32 1), align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @stats_prefix_record_delete(i8* %52, i64 %53)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i8*, i8** %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %59 = load i32, i32* @DONT_UPDATE, align 4
  %60 = call %struct.TYPE_27__* @item_get_locked(i8* %56, i64 %57, %struct.TYPE_28__* %58, i32 %59, i32* %4)
  store %struct.TYPE_27__* %60, %struct.TYPE_27__** %3, align 8
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %62 = icmp ne %struct.TYPE_27__* %61, null
  br i1 %62, label %63, label %131

63:                                               ; preds = %55
  %64 = load %struct.TYPE_38__*, %struct.TYPE_38__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @ntohll(i32 %69)
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %63
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %76 = call i64 @ITEM_get_cas(%struct.TYPE_27__* %75)
  %77 = icmp eq i64 %74, %76
  br i1 %77, label %78, label %124

78:                                               ; preds = %73, %63
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %83 = call i32 @ITEM_key(%struct.TYPE_27__* %82)
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @MEMCACHED_COMMAND_DELETE(i32 %81, i32 %83, i32 %86)
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_37__*, %struct.TYPE_37__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %91, i32 0, i32 0
  %93 = call i32 @pthread_mutex_lock(i32* %92)
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_37__*, %struct.TYPE_37__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_35__*, %struct.TYPE_35__** %98, align 8
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %101 = call i64 @ITEM_clsid(%struct.TYPE_27__* %100)
  %102 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_37__*, %struct.TYPE_37__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %109, i32 0, i32 0
  %111 = call i32 @pthread_mutex_unlock(i32* %110)
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @do_item_unlink(%struct.TYPE_27__* %112, i32 %113)
  %115 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_37__*, %struct.TYPE_37__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %121 = call i32 @STORAGE_delete(i32 %119, %struct.TYPE_27__* %120)
  %122 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %123 = call i32 @write_bin_response(%struct.TYPE_28__* %122, i32* null, i32 0, i32 0, i32 0)
  br label %128

124:                                              ; preds = %73
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %126 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS, align 4
  %127 = call i32 @write_bin_error(%struct.TYPE_28__* %125, i32 %126, i32* null, i32 0)
  br label %128

128:                                              ; preds = %124, %78
  %129 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %130 = call i32 @do_item_remove(%struct.TYPE_27__* %129)
  br label %154

131:                                              ; preds = %55
  %132 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %133 = load i32, i32* @PROTOCOL_BINARY_RESPONSE_KEY_ENOENT, align 4
  %134 = call i32 @write_bin_error(%struct.TYPE_28__* %132, i32 %133, i32* null, i32 0)
  %135 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_37__*, %struct.TYPE_37__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %138, i32 0, i32 0
  %140 = call i32 @pthread_mutex_lock(i32* %139)
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 0
  %143 = load %struct.TYPE_37__*, %struct.TYPE_37__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  %148 = load %struct.TYPE_28__*, %struct.TYPE_28__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_37__*, %struct.TYPE_37__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %151, i32 0, i32 0
  %153 = call i32 @pthread_mutex_unlock(i32* %152)
  br label %154

154:                                              ; preds = %131, %128
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @item_unlock(i32 %155)
  ret void
}

declare dso_local %struct.TYPE_38__* @binary_get_request(%struct.TYPE_28__*) #1

declare dso_local i8* @binary_get_key(%struct.TYPE_28__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @stats_prefix_record_delete(i8*, i64) #1

declare dso_local %struct.TYPE_27__* @item_get_locked(i8*, i64, %struct.TYPE_28__*, i32, i32*) #1

declare dso_local i64 @ntohll(i32) #1

declare dso_local i64 @ITEM_get_cas(%struct.TYPE_27__*) #1

declare dso_local i32 @MEMCACHED_COMMAND_DELETE(i32, i32, i32) #1

declare dso_local i32 @ITEM_key(%struct.TYPE_27__*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @ITEM_clsid(%struct.TYPE_27__*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @do_item_unlink(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @STORAGE_delete(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @write_bin_response(%struct.TYPE_28__*, i32*, i32, i32, i32) #1

declare dso_local i32 @write_bin_error(%struct.TYPE_28__*, i32, i32*, i32) #1

declare dso_local i32 @do_item_remove(%struct.TYPE_27__*) #1

declare dso_local i32 @item_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
