; ModuleID = '/home/carl/AnghaBench/nginx/src/core/extr_ngx_resolver.c_ngx_resolve_addr_done.c'
source_filename = "/home/carl/AnghaBench/nginx/src/core/extr_ngx_resolver.c_ngx_resolve_addr_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_18__*, %struct.TYPE_14__, %struct.TYPE_18__*, %struct.TYPE_17__*, i32, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_16__ = type { %struct.TYPE_18__*, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32* }

@NGX_LOG_DEBUG_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"resolve addr done: %i\00", align 1
@NGX_AGAIN = common dso_local global i32 0, align 4
@NGX_RESOLVE_TIMEDOUT = common dso_local global i32 0, align 4
@NGX_SOCKADDR_STRLEN = common dso_local global i32 0, align 4
@NGX_LOG_ALERT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"could not cancel %V resolving\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ngx_resolve_addr_done(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_18__**, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 6
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %5, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %21 [
  ]

21:                                               ; preds = %1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 3
  store i32* %23, i32** %4, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 2
  store i32* %25, i32** %3, align 8
  br label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @NGX_LOG_DEBUG_CORE, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ngx_log_debug1(i32 %27, i32 %30, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %36, align 8
  %38 = icmp ne %struct.TYPE_18__* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %26
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %48, align 8
  %50 = call i32 @ngx_del_timer(%struct.TYPE_18__* %49)
  br label %51

51:                                               ; preds = %46, %39, %26
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @NGX_AGAIN, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %63, label %57

57:                                               ; preds = %51
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @NGX_RESOLVE_TIMEDOUT, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %117

63:                                               ; preds = %57, %51
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %65, align 8
  store %struct.TYPE_17__* %66, %struct.TYPE_17__** %8, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %68 = icmp ne %struct.TYPE_17__* %67, null
  br i1 %68, label %69, label %94

69:                                               ; preds = %63
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  store %struct.TYPE_18__** %71, %struct.TYPE_18__*** %7, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  store %struct.TYPE_18__* %74, %struct.TYPE_18__** %6, align 8
  br label %75

75:                                               ; preds = %87, %69
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %77 = icmp ne %struct.TYPE_18__* %76, null
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %81 = icmp eq %struct.TYPE_18__* %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %84, align 8
  %86 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %7, align 8
  store %struct.TYPE_18__* %85, %struct.TYPE_18__** %86, align 8
  br label %118

87:                                               ; preds = %78
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 3
  store %struct.TYPE_18__** %89, %struct.TYPE_18__*** %7, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 3
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  store %struct.TYPE_18__* %92, %struct.TYPE_18__** %6, align 8
  br label %75

93:                                               ; preds = %75
  br label %94

94:                                               ; preds = %93, %63
  %95 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %96 = zext i32 %95 to i64
  %97 = call i8* @llvm.stacksave()
  store i8* %97, i8** %9, align 8
  %98 = alloca i32, i64 %96, align 16
  store i64 %96, i64* %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 1
  store i32* %98, i32** %99, align 8
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %102, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @NGX_SOCKADDR_STRLEN, align 4
  %109 = call i32 @ngx_sock_ntop(%struct.TYPE_19__* %103, i32 %107, i32* %98, i32 %108, i32 0)
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  store i32 %109, i32* %110, align 8
  %111 = load i32, i32* @NGX_LOG_ALERT, align 4
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @ngx_log_error(i32 %111, i32 %114, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_15__* %11)
  %116 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %116)
  br label %117

117:                                              ; preds = %94, %57
  br label %118

118:                                              ; preds = %117, %82
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %120 = load i32*, i32** %4, align 8
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @ngx_resolver_expire(%struct.TYPE_16__* %119, i32* %120, i32* %121)
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %124, align 8
  %126 = icmp ne %struct.TYPE_18__* %125, null
  br i1 %126, label %127, label %133

127:                                              ; preds = %118
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %130, align 8
  %132 = call i32 @ngx_resolver_free_locked(%struct.TYPE_16__* %128, %struct.TYPE_18__* %131)
  br label %133

133:                                              ; preds = %127, %118
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %136 = call i32 @ngx_resolver_free_locked(%struct.TYPE_16__* %134, %struct.TYPE_18__* %135)
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %133
  %144 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %145 = call i64 @ngx_resolver_resend_empty(%struct.TYPE_16__* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %149, align 8
  %151 = call i32 @ngx_del_timer(%struct.TYPE_18__* %150)
  br label %152

152:                                              ; preds = %147, %143, %133
  ret void
}

declare dso_local i32 @ngx_log_debug1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @ngx_del_timer(%struct.TYPE_18__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ngx_sock_ntop(%struct.TYPE_19__*, i32, i32*, i32, i32) #1

declare dso_local i32 @ngx_log_error(i32, i32, i32, i8*, %struct.TYPE_15__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @ngx_resolver_expire(%struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @ngx_resolver_free_locked(%struct.TYPE_16__*, %struct.TYPE_18__*) #1

declare dso_local i64 @ngx_resolver_resend_empty(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
