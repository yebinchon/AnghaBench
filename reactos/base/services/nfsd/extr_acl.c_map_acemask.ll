; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_acl.c_map_acemask.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_acl.c_map_acemask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACLLVL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"ACE MASK: %x\0A\00", align 1
@GENERIC_ALL = common dso_local global i32 0, align 4
@NF4DIR = common dso_local global i32 0, align 4
@ACE4_ALL_DIR = common dso_local global i32 0, align 4
@ACE4_ALL_FILE = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@ACE4_GENERIC_READ = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@ACE4_GENERIC_WRITE = common dso_local global i32 0, align 4
@GENERIC_EXECUTE = common dso_local global i32 0, align 4
@ACE4_GENERIC_EXECUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*)* @map_acemask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_acemask(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* @ACLLVL, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @dprintf(i32 %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @print_windows_access_mask(i32 0, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 251658240
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %67

15:                                               ; preds = %3
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @GENERIC_ALL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @NF4DIR, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* @ACE4_ALL_DIR, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 4
  br label %34

29:                                               ; preds = %20
  %30 = load i32, i32* @ACE4_ALL_FILE, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %29, %24
  br label %66

35:                                               ; preds = %15
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @GENERIC_READ, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load i32, i32* @ACE4_GENERIC_READ, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @GENERIC_WRITE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32, i32* @ACE4_GENERIC_WRITE, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %51
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @GENERIC_EXECUTE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32, i32* @ACE4_GENERIC_EXECUTE, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %55
  br label %66

66:                                               ; preds = %65, %34
  br label %71

67:                                               ; preds = %3
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, 16777215
  %70 = load i32*, i32** %6, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %67, %66
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @print_nfs_access_mask(i32 0, i32 %73)
  ret void
}

declare dso_local i32 @dprintf(i32, i8*, i32) #1

declare dso_local i32 @print_windows_access_mask(i32, i32) #1

declare dso_local i32 @print_nfs_access_mask(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
