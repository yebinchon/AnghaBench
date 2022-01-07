; ModuleID = '/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regproc.c_delete_registry_key.c'
source_filename = "/home/carl/AnghaBench/reactos/base/applications/regedit/extr_regproc.c_delete_registry_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"%S: Incorrect registry class specification in '%s'\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%S: Can't delete registry class '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_registry_key(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %1
  br label %49

15:                                               ; preds = %9
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @parseKeyName(i32* %16, i32* %4, i32** %3)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = load i32*, i32** %2, align 8
  %21 = call i8* @GetMultiByteString(i32* %20)
  store i8* %21, i8** %5, align 8
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 (...) @getAppName()
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %24)
  %26 = call i32 (...) @GetProcessHeap()
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @HeapFree(i32 %26, i32 0, i8* %27)
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %15
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %30
  %35 = load i32*, i32** %2, align 8
  %36 = call i8* @GetMultiByteString(i32* %35)
  store i8* %36, i8** %6, align 8
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 (...) @getAppName()
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %38, i8* %39)
  %41 = call i32 (...) @GetProcessHeap()
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @HeapFree(i32 %41, i32 0, i8* %42)
  %44 = call i32 @exit(i32 1) #3
  unreachable

45:                                               ; preds = %30
  %46 = load i32, i32* %4, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @SHDeleteKey(i32 %46, i32* %47)
  br label %49

49:                                               ; preds = %45, %14
  ret void
}

declare dso_local i32 @parseKeyName(i32*, i32*, i32**) #1

declare dso_local i8* @GetMultiByteString(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #1

declare dso_local i32 @getAppName(...) #1

declare dso_local i32 @HeapFree(i32, i32, i8*) #1

declare dso_local i32 @GetProcessHeap(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @SHDeleteKey(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
