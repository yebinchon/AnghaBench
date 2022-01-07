; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/calc/extr_winmain.c_UpdateNumberIntl.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/calc/extr_winmain.c_UpdateNumberIntl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i8*, i32, i8* }

@LOCALE_USER_DEFAULT = common dso_local global i32 0, align 4
@LOCALE_SDECIMAL = common dso_local global i32 0, align 4
@calc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@LOCALE_STHOUSAND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @UpdateNumberIntl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UpdateNumberIntl() #0 {
  %1 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %2 = load i32, i32* @LOCALE_SDECIMAL, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @calc, i32 0, i32 2), align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @calc, i32 0, i32 2), align 8
  %5 = call i32 @SIZEOF(i32 %4)
  %6 = call i32 @GetLocaleInfo(i32 %1, i32 %2, i32 %3, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @calc, i32 0, i32 2), align 8
  %10 = call i32 @_T(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @_tcscpy(i32 %9, i32 %10)
  br label %12

12:                                               ; preds = %8, %0
  %13 = load i32, i32* @LOCALE_USER_DEFAULT, align 4
  %14 = load i32, i32* @LOCALE_STHOUSAND, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @calc, i32 0, i32 0), align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @calc, i32 0, i32 0), align 8
  %17 = call i32 @SIZEOF(i32 %16)
  %18 = call i32 @GetLocaleInfo(i32 %13, i32 %14, i32 %15, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @calc, i32 0, i32 0), align 8
  %22 = call i32 @_T(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %23 = call i32 @_tcscpy(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %20, %12
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @calc, i32 0, i32 2), align 8
  %26 = call i8* @_tcslen(i32 %25)
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @calc, i32 0, i32 3), align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @calc, i32 0, i32 0), align 8
  %28 = call i8* @_tcslen(i32 %27)
  store i8* %28, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @calc, i32 0, i32 1), align 8
  ret void
}

declare dso_local i32 @GetLocaleInfo(i32, i32, i32, i32) #1

declare dso_local i32 @SIZEOF(i32) #1

declare dso_local i32 @_tcscpy(i32, i32) #1

declare dso_local i32 @_T(i8*) #1

declare dso_local i8* @_tcslen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
