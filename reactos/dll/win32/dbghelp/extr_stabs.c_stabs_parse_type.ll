; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabs_parse_type.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/dbghelp/extr_stabs.c_stabs_parse_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.symt* (i8*)* @stabs_parse_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.symt* @stabs_parse_type(i8* %0) #0 {
  %2 = alloca %struct.symt*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 -1
  store i8* %6, i8** %4, align 8
  br label %7

7:                                                ; preds = %14, %1
  %8 = load i8*, i8** %4, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  %10 = call i8* @strchr(i8* %9, i8 signext 58)
  store i8* %10, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store %struct.symt* null, %struct.symt** %2, align 8
  br label %45

13:                                               ; preds = %7
  br label %14

14:                                               ; preds = %13
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 58
  br i1 %19, label %7, label %20

20:                                               ; preds = %14
  br label %21

21:                                               ; preds = %39, %20
  %22 = load i8*, i8** %4, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 40
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i32 @isdigit(i8 signext %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %31, %26, %21
  %38 = phi i1 [ false, %26 ], [ false, %21 ], [ %36, %31 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %4, align 8
  br label %21

42:                                               ; preds = %37
  %43 = call %struct.symt** @stabs_read_type_enum(i8** %4)
  %44 = load %struct.symt*, %struct.symt** %43, align 8
  store %struct.symt* %44, %struct.symt** %2, align 8
  br label %45

45:                                               ; preds = %42, %12
  %46 = load %struct.symt*, %struct.symt** %2, align 8
  ret %struct.symt* %46
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local %struct.symt** @stabs_read_type_enum(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
