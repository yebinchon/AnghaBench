; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_aclconcat.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/utils/adt/extr_acl.c_aclconcat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @aclconcat(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @ACL_NUM(i32* %6)
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @ACL_NUM(i32* %8)
  %10 = add nsw i32 %7, %9
  %11 = call i32* @allocacl(i32 %10)
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @ACL_DAT(i32* %12)
  %14 = load i32*, i32** %3, align 8
  %15 = call i64 @ACL_DAT(i32* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @ACL_NUM(i32* %16)
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memcpy(i64 %13, i64 %15, i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @ACL_DAT(i32* %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @ACL_NUM(i32* %24)
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  %28 = load i32*, i32** %4, align 8
  %29 = call i64 @ACL_DAT(i32* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @ACL_NUM(i32* %30)
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memcpy(i64 %27, i64 %29, i32 %34)
  %36 = load i32*, i32** %5, align 8
  ret i32* %36
}

declare dso_local i32* @allocacl(i32) #1

declare dso_local i32 @ACL_NUM(i32*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i64 @ACL_DAT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
