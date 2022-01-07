; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_rootstore.c_import_certs_from_path.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/crypt32/extr_rootstore.c_import_certs_from_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"(%s, %p, %d)\0A\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"%s is a directory and directories are disallowed\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"%s: invalid file type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64)* @import_certs_from_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @import_certs_from_path(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %7, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @debugstr_a(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @TRACE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i64 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @O_RDONLY, align 4
  %18 = call i32 @open(i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %59

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @fstat(i32 %22, %struct.stat* %9)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %56

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @S_ISREG(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @import_certs_from_file(i32 %31, i32 %32)
  store i64 %33, i64* %7, align 8
  br label %55

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @S_ISDIR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @import_certs_from_dir(i32 %43, i32 %44)
  store i64 %45, i64* %7, align 8
  br label %50

46:                                               ; preds = %39
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @debugstr_a(i32 %47)
  %49 = call i32 @WARN(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %42
  br label %54

51:                                               ; preds = %34
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %51, %50
  br label %55

55:                                               ; preds = %54, %30
  br label %56

56:                                               ; preds = %55, %21
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @close(i32 %57)
  br label %59

59:                                               ; preds = %56, %3
  %60 = load i64, i64* %7, align 8
  ret i64 %60
}

declare dso_local i32 @TRACE(i8*, i32, i32, i64) #1

declare dso_local i32 @debugstr_a(i32) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @import_certs_from_file(i32, i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @import_certs_from_dir(i32, i32) #1

declare dso_local i32 @WARN(i8*, i32) #1

declare dso_local i32 @ERR(i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
