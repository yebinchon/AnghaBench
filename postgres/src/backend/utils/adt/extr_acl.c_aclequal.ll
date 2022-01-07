; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_aclequal.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_aclequal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aclequal(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @ACL_NUM(i32* %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %8, %2
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @ACL_NUM(i32* %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %12
  store i32 1, i32* %3, align 4
  br label %51

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %51

21:                                               ; preds = %8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @ACL_NUM(i32* %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %21
  store i32 0, i32* %3, align 4
  br label %51

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29
  %31 = load i32*, i32** %4, align 8
  %32 = call i32 @ACL_NUM(i32* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @ACL_NUM(i32* %33)
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %51

37:                                               ; preds = %30
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @ACL_DAT(i32* %38)
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @ACL_DAT(i32* %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @ACL_NUM(i32* %42)
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = trunc i64 %45 to i32
  %47 = call i64 @memcmp(i32 %39, i32 %41, i32 %46)
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %51

50:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %49, %36, %28, %20, %19
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @ACL_NUM(i32*) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @ACL_DAT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
