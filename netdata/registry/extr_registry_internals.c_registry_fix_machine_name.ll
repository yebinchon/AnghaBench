; ModuleID = '/home/carl/AnghaBench/netdata/registry/extr_registry_internals.c_registry_fix_machine_name.c'
source_filename = "/home/carl/AnghaBench/netdata/registry/extr_registry_internals.c_registry_fix_machine_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64*)* @registry_fix_machine_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @registry_fix_machine_name(i8* %0, i64* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  br label %12

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i8* [ %10, %9 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %11 ]
  store i8* %13, i8** %5, align 8
  br label %14

14:                                               ; preds = %26, %12
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = call i64 @isspace(i8 signext %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ false, %14 ], [ %23, %19 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %5, align 8
  br label %14

29:                                               ; preds = %24
  %30 = load i8*, i8** %5, align 8
  store i8* %30, i8** %6, align 8
  br label %31

31:                                               ; preds = %43, %29
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @isspace(i8 signext %37)
  %39 = call i64 @unlikely(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i8*, i8** %6, align 8
  store i8 32, i8* %42, align 1
  br label %43

43:                                               ; preds = %41, %35
  %44 = load i8*, i8** %6, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %6, align 8
  br label %31

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %60, %46
  %48 = load i8*, i8** %6, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 -1
  store i8* %49, i8** %6, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = icmp uge i8* %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load i8*, i8** %6, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 32
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i8*, i8** %6, align 8
  store i8 0, i8* %58, align 1
  br label %60

59:                                               ; preds = %52
  br label %61

60:                                               ; preds = %57
  br label %47

61:                                               ; preds = %59, %47
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %6, align 8
  %64 = load i64*, i64** %4, align 8
  %65 = call i64 @likely(i64* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i8*, i8** %6, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = ptrtoint i8* %68 to i64
  %71 = ptrtoint i8* %69 to i64
  %72 = sub i64 %70, %71
  %73 = load i64*, i64** %4, align 8
  store i64 %72, i64* %73, align 8
  br label %74

74:                                               ; preds = %67, %61
  %75 = load i8*, i8** %5, align 8
  ret i8* %75
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @likely(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
