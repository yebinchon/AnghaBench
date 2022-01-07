; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_thread-self.c_f.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/proc/extr_thread-self.c_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"%u/task/%u\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"/proc/thread-self\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [64 x i8], align 16
  %4 = alloca [64 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = call i32 (...) @sys_getpid()
  store i32 %8, i32* %5, align 4
  %9 = call i32 (...) @sys_gettid()
  store i32 %9, i32* %6, align 4
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @snprintf(i8* %10, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %15 = call i64 @readlink(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %14, i32 64)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %18 = call i64 @strlen(i8* %17)
  %19 = icmp eq i64 %16, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 %22
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %26 = call i32 @streq(i8* %24, i8* %25)
  %27 = call i32 @assert(i32 %26)
  %28 = load i8*, i8** %2, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = call i32 @exit(i32 0) #3
  unreachable

32:                                               ; preds = %1
  ret i32 0
}

declare dso_local i32 @sys_getpid(...) #1

declare dso_local i32 @sys_gettid(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i64 @readlink(i8*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @streq(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
