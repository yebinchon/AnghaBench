; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/extr_utils.c_is_ppc64le.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/powerpc/extr_utils.c_is_ppc64le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utsname = type { i32 }

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"uname\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ppc64le\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_ppc64le() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.utsname, align 4
  %3 = alloca i32, align 4
  store i64 0, i64* @errno, align 8
  %4 = call i32 @uname(%struct.utsname* %2)
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %15

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.utsname, %struct.utsname* %2, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @strcmp(i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %1, align 4
  br label %15

15:                                               ; preds = %9, %7
  %16 = load i32, i32* %1, align 4
  ret i32 %16
}

declare dso_local i32 @uname(%struct.utsname*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
