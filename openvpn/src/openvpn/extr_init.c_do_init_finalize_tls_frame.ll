; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_init_finalize_tls_frame.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_init.c_do_init_finalize_tls_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.context = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@D_MTU_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Control Channel MTU parms\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"TLS-Auth MTU parms\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.context*)* @do_init_finalize_tls_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_init_finalize_tls_frame(%struct.context* %0) #0 {
  %2 = alloca %struct.context*, align 8
  store %struct.context* %0, %struct.context** %2, align 8
  %3 = load %struct.context*, %struct.context** %2, align 8
  %4 = getelementptr inbounds %struct.context, %struct.context* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %7 = icmp ne %struct.TYPE_7__* %6, null
  br i1 %7, label %8, label %39

8:                                                ; preds = %1
  %9 = load %struct.context*, %struct.context** %2, align 8
  %10 = getelementptr inbounds %struct.context, %struct.context* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = load %struct.context*, %struct.context** %2, align 8
  %14 = getelementptr inbounds %struct.context, %struct.context* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = call i32 @tls_multi_init_finalize(%struct.TYPE_7__* %12, i32* %15)
  %17 = load %struct.context*, %struct.context** %2, align 8
  %18 = getelementptr inbounds %struct.context, %struct.context* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = call i64 @EXPANDED_SIZE(i32* %22)
  %24 = load %struct.context*, %struct.context** %2, align 8
  %25 = getelementptr inbounds %struct.context, %struct.context* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = call i64 @EXPANDED_SIZE(i32* %26)
  %28 = icmp sle i64 %23, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load %struct.context*, %struct.context** %2, align 8
  %32 = getelementptr inbounds %struct.context, %struct.context* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* @D_MTU_INFO, align 4
  %38 = call i32 @frame_print(i32* %36, i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %8, %1
  %40 = load %struct.context*, %struct.context** %2, align 8
  %41 = getelementptr inbounds %struct.context, %struct.context* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = icmp ne %struct.TYPE_8__* %43, null
  br i1 %44, label %45, label %61

45:                                               ; preds = %39
  %46 = load %struct.context*, %struct.context** %2, align 8
  %47 = getelementptr inbounds %struct.context, %struct.context* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load %struct.context*, %struct.context** %2, align 8
  %51 = getelementptr inbounds %struct.context, %struct.context* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = call i32 @tls_auth_standalone_finalize(%struct.TYPE_8__* %49, i32* %52)
  %54 = load %struct.context*, %struct.context** %2, align 8
  %55 = getelementptr inbounds %struct.context, %struct.context* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* @D_MTU_INFO, align 4
  %60 = call i32 @frame_print(i32* %58, i32 %59, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %45, %39
  ret void
}

declare dso_local i32 @tls_multi_init_finalize(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @EXPANDED_SIZE(i32*) #1

declare dso_local i32 @frame_print(i32*, i32, i8*) #1

declare dso_local i32 @tls_auth_standalone_finalize(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
