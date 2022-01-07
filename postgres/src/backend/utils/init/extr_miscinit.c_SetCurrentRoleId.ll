; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_miscinit.c_SetCurrentRoleId.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/init/extr_miscinit.c_SetCurrentRoleId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SessionUserId = common dso_local global i32 0, align 4
@SessionUserIsSuperuser = common dso_local global i32 0, align 4
@SetRoleIsActive = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"is_superuser\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@PGC_INTERNAL = common dso_local global i32 0, align 4
@PGC_S_OVERRIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetCurrentRoleId(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @OidIsValid(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @SessionUserId, align 4
  %10 = call i32 @OidIsValid(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  br label %27

13:                                               ; preds = %8
  %14 = load i32, i32* @SessionUserId, align 4
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @SessionUserIsSuperuser, align 4
  store i32 %15, i32* %4, align 4
  store i32 0, i32* @SetRoleIsActive, align 4
  br label %17

16:                                               ; preds = %2
  store i32 1, i32* @SetRoleIsActive, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @SetOuterUserId(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %24 = load i32, i32* @PGC_INTERNAL, align 4
  %25 = load i32, i32* @PGC_S_OVERRIDE, align 4
  %26 = call i32 @SetConfigOption(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %17, %12
  ret void
}

declare dso_local i32 @OidIsValid(i32) #1

declare dso_local i32 @SetOuterUserId(i32) #1

declare dso_local i32 @SetConfigOption(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
