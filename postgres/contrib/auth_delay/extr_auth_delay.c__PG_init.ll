; ModuleID = '/home/carl/AnghaBench/postgres/contrib/auth_delay/extr_auth_delay.c__PG_init.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/auth_delay/extr_auth_delay.c__PG_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"auth_delay.milliseconds\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"Milliseconds to delay before reporting authentication failure\00", align 1
@auth_delay_milliseconds = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@PGC_SIGHUP = common dso_local global i32 0, align 4
@GUC_UNIT_MS = common dso_local global i32 0, align 4
@ClientAuthentication_hook = common dso_local global i32 0, align 4
@original_client_auth_hook = common dso_local global i32 0, align 4
@auth_delay_checks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_PG_init() #0 {
  %1 = load i32, i32* @INT_MAX, align 4
  %2 = sdiv i32 %1, 1000
  %3 = load i32, i32* @PGC_SIGHUP, align 4
  %4 = load i32, i32* @GUC_UNIT_MS, align 4
  %5 = call i32 @DefineCustomIntVariable(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* @auth_delay_milliseconds, i32 0, i32 0, i32 %2, i32 %3, i32 %4, i32* null, i32* null, i32* null)
  %6 = load i32, i32* @ClientAuthentication_hook, align 4
  store i32 %6, i32* @original_client_auth_hook, align 4
  %7 = load i32, i32* @auth_delay_checks, align 4
  store i32 %7, i32* @ClientAuthentication_hook, align 4
  ret void
}

declare dso_local i32 @DefineCustomIntVariable(i8*, i8*, i32*, i32*, i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
