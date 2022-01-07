; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_acl.c_map_aceflags.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_acl.c_map_aceflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OBJECT_INHERIT_ACE = common dso_local global i32 0, align 4
@ACE4_FILE_INHERIT_ACE = common dso_local global i32 0, align 4
@CONTAINER_INHERIT_ACE = common dso_local global i32 0, align 4
@ACE4_DIRECTORY_INHERIT_ACE = common dso_local global i32 0, align 4
@NO_PROPAGATE_INHERIT_ACE = common dso_local global i32 0, align 4
@ACE4_NO_PROPAGATE_INHERIT_ACE = common dso_local global i32 0, align 4
@INHERIT_ONLY_ACE = common dso_local global i32 0, align 4
@ACE4_INHERIT_ONLY_ACE = common dso_local global i32 0, align 4
@INHERITED_ACE = common dso_local global i32 0, align 4
@ACE4_INHERITED_ACE = common dso_local global i32 0, align 4
@ACLLVL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"ACE FLAGS: %x nfs4 aceflags %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @map_aceflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_aceflags(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @OBJECT_INHERIT_ACE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* @ACE4_FILE_INHERIT_ACE, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %10
  store i32 %13, i32* %11, align 4
  br label %14

14:                                               ; preds = %9, %2
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @CONTAINER_INHERIT_ACE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, i32* @ACE4_DIRECTORY_INHERIT_ACE, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %19, %14
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @NO_PROPAGATE_INHERIT_ACE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load i32, i32* @ACE4_NO_PROPAGATE_INHERIT_ACE, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %30
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @INHERIT_ONLY_ACE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load i32, i32* @ACE4_INHERIT_ONLY_ACE, align 4
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %40
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @INHERITED_ACE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* @ACE4_INHERITED_ACE, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %50
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %49, %44
  %55 = load i32, i32* @ACLLVL, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dprintf(i32 %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %58)
  ret void
}

declare dso_local i32 @dprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
