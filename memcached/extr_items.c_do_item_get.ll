; ModuleID = '/home/carl/AnghaBench/memcached/extr_items.c_do_item_get.c'
source_filename = "/home/carl/AnghaBench/memcached/extr_items.c_do_item_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }

@settings = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"> NOT FOUND \00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"> FOUND KEY \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c" -nuked by flush\00", align 1
@current_time = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c" -nuked by expire\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@LOG_FETCHERS = common dso_local global i32 0, align 4
@LOGGER_ITEM_GET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_20__* @do_item_get(i8* %0, i64 %1, i32 %2, %struct.TYPE_21__* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.TYPE_20__* @assoc_find(i8* %14, i64 %15, i32 %16)
  store %struct.TYPE_20__* %17, %struct.TYPE_20__** %11, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %19 = icmp ne %struct.TYPE_20__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %22 = call i32 @refcount_incr(%struct.TYPE_20__* %21)
  br label %23

23:                                               ; preds = %20, %5
  store i32 0, i32* %12, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @settings, i32 0, i32 0), align 4
  %25 = icmp sgt i32 %24, 2
  br i1 %25, label %26, label %54

26:                                               ; preds = %23
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %28 = icmp eq %struct.TYPE_20__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* @stderr, align 4
  %31 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %29
  store i32 0, i32* %13, align 4
  br label %36

36:                                               ; preds = %50, %35
  %37 = load i32, i32* %13, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %7, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load i32, i32* @stderr, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %41
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %13, align 4
  br label %36

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53, %23
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %56 = icmp ne %struct.TYPE_20__* %55, null
  br i1 %56, label %57, label %161

57:                                               ; preds = %54
  store i32 1, i32* %12, align 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %59 = call i64 @item_is_flushed(%struct.TYPE_20__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %99

61:                                               ; preds = %57
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @do_item_unlink(%struct.TYPE_20__* %62, i32 %63)
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %71 = call i32 @STORAGE_delete(i32 %69, %struct.TYPE_20__* %70)
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %73 = call i32 @do_item_remove(%struct.TYPE_20__* %72)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %11, align 8
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = call i32 @pthread_mutex_lock(i32* %78)
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = call i32 @pthread_mutex_unlock(i32* %91)
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @settings, i32 0, i32 0), align 4
  %94 = icmp sgt i32 %93, 2
  br i1 %94, label %95, label %98

95:                                               ; preds = %61
  %96 = load i32, i32* @stderr, align 4
  %97 = call i32 (i32, i8*, ...) @fprintf(i32 %96, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %95, %61
  store i32 2, i32* %12, align 4
  br label %160

99:                                               ; preds = %57
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %148

104:                                              ; preds = %99
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @current_time, align 8
  %109 = icmp sle i64 %107, %108
  br i1 %109, label %110, label %148

110:                                              ; preds = %104
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @do_item_unlink(%struct.TYPE_20__* %111, i32 %112)
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %120 = call i32 @STORAGE_delete(i32 %118, %struct.TYPE_20__* %119)
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %122 = call i32 @do_item_remove(%struct.TYPE_20__* %121)
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %11, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = call i32 @pthread_mutex_lock(i32* %127)
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = call i32 @pthread_mutex_unlock(i32* %140)
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @settings, i32 0, i32 0), align 4
  %143 = icmp sgt i32 %142, 2
  br i1 %143, label %144, label %147

144:                                              ; preds = %110
  %145 = load i32, i32* @stderr, align 4
  %146 = call i32 (i32, i8*, ...) @fprintf(i32 %145, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %147

147:                                              ; preds = %144, %110
  store i32 3, i32* %12, align 4
  br label %159

148:                                              ; preds = %104, %99
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @do_item_bump(%struct.TYPE_21__* %152, %struct.TYPE_20__* %153, i32 %154)
  br label %156

156:                                              ; preds = %151, %148
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %158 = call i32 @DEBUG_REFCNT(%struct.TYPE_20__* %157, i8 signext 43)
  br label %159

159:                                              ; preds = %156, %147
  br label %160

160:                                              ; preds = %159, %98
  br label %161

161:                                              ; preds = %160, %54
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @settings, i32 0, i32 0), align 4
  %163 = icmp sgt i32 %162, 2
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i32, i32* @stderr, align 4
  %166 = call i32 (i32, i8*, ...) @fprintf(i32 %165, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %167

167:                                              ; preds = %164, %161
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @LOG_FETCHERS, align 4
  %174 = load i32, i32* @LOGGER_ITEM_GET, align 4
  %175 = load i32, i32* %12, align 4
  %176 = load i8*, i8** %6, align 8
  %177 = load i64, i64* %7, align 8
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %179 = icmp ne %struct.TYPE_20__* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %167
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %182 = call i32 @ITEM_clsid(%struct.TYPE_20__* %181)
  br label %184

183:                                              ; preds = %167
  br label %184

184:                                              ; preds = %183, %180
  %185 = phi i32 [ %182, %180 ], [ 0, %183 ]
  %186 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @LOGGER_LOG(i32 %172, i32 %173, i32 %174, i32* null, i32 %175, i8* %176, i64 %177, i32 %185, i32 %188)
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  ret %struct.TYPE_20__* %190
}

declare dso_local %struct.TYPE_20__* @assoc_find(i8*, i64, i32) #1

declare dso_local i32 @refcount_incr(%struct.TYPE_20__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @item_is_flushed(%struct.TYPE_20__*) #1

declare dso_local i32 @do_item_unlink(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @STORAGE_delete(i32, %struct.TYPE_20__*) #1

declare dso_local i32 @do_item_remove(%struct.TYPE_20__*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @do_item_bump(%struct.TYPE_21__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @DEBUG_REFCNT(%struct.TYPE_20__*, i8 signext) #1

declare dso_local i32 @LOGGER_LOG(i32, i32, i32, i32*, i32, i8*, i64, i32, i32) #1

declare dso_local i32 @ITEM_clsid(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
