; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_aclmerge.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_aclmerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACL_MODECHG_ADD = common dso_local global i32 0, align 4
@DROP_RESTRICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @aclmerge(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @ACL_NUM(i32* %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %15, %3
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @ACL_NUM(i32* %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %19
  store i32* null, i32** %4, align 8
  br label %69

27:                                               ; preds = %22
  %28 = load i32*, i32** %6, align 8
  %29 = call i32* @aclcopy(i32* %28)
  store i32* %29, i32** %4, align 8
  br label %69

30:                                               ; preds = %15
  %31 = load i32*, i32** %6, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @ACL_NUM(i32* %34)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %30
  %38 = load i32*, i32** %5, align 8
  %39 = call i32* @aclcopy(i32* %38)
  store i32* %39, i32** %4, align 8
  br label %69

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40
  %42 = load i32*, i32** %5, align 8
  %43 = call i32* @aclcopy(i32* %42)
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i32* @ACL_DAT(i32* %44)
  store i32* %45, i32** %9, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @ACL_NUM(i32* %46)
  store i32 %47, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %62, %41
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %67

52:                                               ; preds = %48
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* @ACL_MODECHG_ADD, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @DROP_RESTRICT, align 4
  %58 = call i32* @aclupdate(i32* %53, i32* %54, i32 %55, i32 %56, i32 %57)
  store i32* %58, i32** %12, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @pfree(i32* %59)
  %61 = load i32*, i32** %12, align 8
  store i32* %61, i32** %8, align 8
  br label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %9, align 8
  br label %48

67:                                               ; preds = %48
  %68 = load i32*, i32** %8, align 8
  store i32* %68, i32** %4, align 8
  br label %69

69:                                               ; preds = %67, %37, %27, %26
  %70 = load i32*, i32** %4, align 8
  ret i32* %70
}

declare dso_local i32 @ACL_NUM(i32*) #1

declare dso_local i32* @aclcopy(i32*) #1

declare dso_local i32* @ACL_DAT(i32*) #1

declare dso_local i32* @aclupdate(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @pfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
