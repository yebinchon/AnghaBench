; ModuleID = '/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_writev_chain.c_ngx_writev_chain.c'
source_filename = "/home/carl/AnghaBench/nginx/src/os/unix/extr_ngx_writev_chain.c_ngx_writev_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i64, i32, i64 }
%struct.TYPE_19__ = type { i32, i64, %struct.iovec* }
%struct.iovec = type { i32 }

@NGX_IOVS_PREALLOCATE = common dso_local global i32 0, align 4
@NGX_MAX_SIZE_T_VALUE = common dso_local global i64 0, align 8
@ngx_pagesize = common dso_local global i64 0, align 8
@NGX_CHAIN_ERROR = common dso_local global %struct.TYPE_22__* null, align 8
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"file buf in writev t:%d r:%d f:%d %p %p-%p %p %O-%O\00", align 1
@NGX_ERROR = common dso_local global i64 0, align 8
@NGX_AGAIN = common dso_local global i64 0, align 8
@NGX_USE_KQUEUE_EVENT = common dso_local global i32 0, align 4
@ngx_event_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @ngx_writev_chain(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_19__, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load i32, i32* @NGX_IOVS_PREALLOCATE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %15, align 8
  %21 = alloca %struct.iovec, i64 %19, align 16
  store i64 %19, i64* %16, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %13, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %3
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %30, %struct.TYPE_22__** %4, align 8
  store i32 1, i32* %17, align 4
  br label %176

31:                                               ; preds = %3
  %32 = load i64, i64* %7, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @NGX_MAX_SIZE_T_VALUE, align 8
  %37 = load i64, i64* @ngx_pagesize, align 8
  %38 = sub nsw i64 %36, %37
  %39 = icmp sgt i64 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34, %31
  %41 = load i64, i64* @NGX_MAX_SIZE_T_VALUE, align 8
  %42 = load i64, i64* @ngx_pagesize, align 8
  %43 = sub nsw i64 %41, %42
  store i64 %43, i64* %7, align 8
  br label %44

44:                                               ; preds = %40, %34
  store i64 0, i64* %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 2
  store %struct.iovec* %21, %struct.iovec** %45, align 8
  %46 = load i32, i32* @NGX_IOVS_PREALLOCATE, align 4
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  br label %48

48:                                               ; preds = %175, %44
  %49 = load i64, i64* %10, align 8
  store i64 %49, i64* %11, align 8
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %10, align 8
  %53 = sub nsw i64 %51, %52
  %54 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.TYPE_22__* @ngx_output_chain_to_iovec(%struct.TYPE_19__* %14, %struct.TYPE_22__* %50, i64 %53, i32 %56)
  store %struct.TYPE_22__* %57, %struct.TYPE_22__** %12, align 8
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** @NGX_CHAIN_ERROR, align 8
  %60 = icmp eq %struct.TYPE_22__* %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %48
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_22__* %62, %struct.TYPE_22__** %4, align 8
  store i32 1, i32* %17, align 4
  br label %176

63:                                               ; preds = %48
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %65 = icmp ne %struct.TYPE_22__* %64, null
  br i1 %65, label %66, label %126

66:                                               ; preds = %63
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %126

73:                                               ; preds = %66
  %74 = load i32, i32* @NGX_LOG_ALERT, align 4
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 6
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @ngx_log_error(i32 %74, i32 %77, i32 0, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %87, i64 %92, i32 %97, i32 %102, i32 %107, i32 %112, i32 %117, i32 %122)
  %124 = call i32 (...) @ngx_debug_point()
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_22__* %125, %struct.TYPE_22__** %4, align 8
  store i32 1, i32* %17, align 4
  br label %176

126:                                              ; preds = %66, %63
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %10, align 8
  %130 = add nsw i64 %129, %128
  store i64 %130, i64* %10, align 8
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %132 = call i64 @ngx_writev(%struct.TYPE_21__* %131, %struct.TYPE_19__* %14)
  store i64 %132, i64* %8, align 8
  %133 = load i64, i64* %8, align 8
  %134 = load i64, i64* @NGX_ERROR, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %126
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** @NGX_CHAIN_ERROR, align 8
  store %struct.TYPE_22__* %137, %struct.TYPE_22__** %4, align 8
  store i32 1, i32* %17, align 4
  br label %176

138:                                              ; preds = %126
  %139 = load i64, i64* %8, align 8
  %140 = load i64, i64* @NGX_AGAIN, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  br label %145

143:                                              ; preds = %138
  %144 = load i64, i64* %8, align 8
  br label %145

145:                                              ; preds = %143, %142
  %146 = phi i64 [ 0, %142 ], [ %144, %143 ]
  store i64 %146, i64* %9, align 8
  %147 = load i64, i64* %9, align 8
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %147
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %149, align 8
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %155 = load i64, i64* %9, align 8
  %156 = call %struct.TYPE_22__* @ngx_chain_update_sent(%struct.TYPE_22__* %154, i64 %155)
  store %struct.TYPE_22__* %156, %struct.TYPE_22__** %6, align 8
  %157 = load i64, i64* %10, align 8
  %158 = load i64, i64* %11, align 8
  %159 = sub nsw i64 %157, %158
  %160 = load i64, i64* %9, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %145
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 1
  store i64 0, i64* %164, align 8
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %165, %struct.TYPE_22__** %4, align 8
  store i32 1, i32* %17, align 4
  br label %176

166:                                              ; preds = %145
  %167 = load i64, i64* %10, align 8
  %168 = load i64, i64* %7, align 8
  %169 = icmp sge i64 %167, %168
  br i1 %169, label %173, label %170

170:                                              ; preds = %166
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %172 = icmp eq %struct.TYPE_22__* %171, null
  br i1 %172, label %173, label %175

173:                                              ; preds = %170, %166
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* %174, %struct.TYPE_22__** %4, align 8
  store i32 1, i32* %17, align 4
  br label %176

175:                                              ; preds = %170
  br label %48

176:                                              ; preds = %173, %162, %136, %73, %61, %29
  %177 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %177)
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  ret %struct.TYPE_22__* %178
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_22__* @ngx_output_chain_to_iovec(%struct.TYPE_19__*, %struct.TYPE_22__*, i64, i32) #2

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, i32, i32, i64, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @ngx_debug_point(...) #2

declare dso_local i64 @ngx_writev(%struct.TYPE_21__*, %struct.TYPE_19__*) #2

declare dso_local %struct.TYPE_22__* @ngx_chain_update_sent(%struct.TYPE_22__*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
