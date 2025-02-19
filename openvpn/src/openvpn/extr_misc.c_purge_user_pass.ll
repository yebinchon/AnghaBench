; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_misc.c_purge_user_pass.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_misc.c_purge_user_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_pass = type { i32 }

@purge_user_pass.warn_shown = internal global i32 0, align 4
@M_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [105 x i8] c"WARNING: this configuration may cache passwords in memory -- use the auth-nocache option to prevent this\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @purge_user_pass(%struct.user_pass* %0, i32 %1) #0 {
  %3 = alloca %struct.user_pass*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.user_pass* %0, %struct.user_pass** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.user_pass*, %struct.user_pass** %3, align 8
  %7 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11, %2
  %15 = load %struct.user_pass*, %struct.user_pass** %3, align 8
  %16 = call i32 @secure_memzero(%struct.user_pass* %15, i32 4)
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.user_pass*, %struct.user_pass** %3, align 8
  %19 = getelementptr inbounds %struct.user_pass, %struct.user_pass* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %27

20:                                               ; preds = %11
  %21 = load i32, i32* @purge_user_pass.warn_shown, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @M_WARN, align 4
  %25 = call i32 @msg(i32 %24, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* @purge_user_pass.warn_shown, align 4
  br label %26

26:                                               ; preds = %23, %20
  br label %27

27:                                               ; preds = %26, %14
  ret void
}

declare dso_local i32 @secure_memzero(%struct.user_pass*, i32) #1

declare dso_local i32 @msg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
