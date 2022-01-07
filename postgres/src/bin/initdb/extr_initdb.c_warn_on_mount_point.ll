; ModuleID = '/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_warn_on_mount_point.c'
source_filename = "/home/carl/AnghaBench/postgres/src/bin/initdb/extr_initdb.c_warn_on_mount_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"It contains a dot-prefixed/invisible file, perhaps due to it being a mount point.\0A\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"It contains a lost+found directory, perhaps due to it being a mount point.\0A\00", align 1
@.str.2 = private unnamed_addr constant [117 x i8] c"Using a mount point directly as the data directory is not recommended.\0ACreate a subdirectory under the mount point.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @warn_on_mount_point(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* @stderr, align 4
  %7 = call i8* @_(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @fprintf(i32 %6, i8* %7)
  br label %17

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* @stderr, align 4
  %14 = call i8* @_(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @fprintf(i32 %13, i8* %14)
  br label %16

16:                                               ; preds = %12, %9
  br label %17

17:                                               ; preds = %16, %5
  %18 = load i32, i32* @stderr, align 4
  %19 = call i8* @_(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @fprintf(i32 %18, i8* %19)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
