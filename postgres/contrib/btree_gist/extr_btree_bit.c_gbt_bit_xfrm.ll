; ModuleID = '/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_bit.c_gbt_bit_xfrm.c'
source_filename = "/home/carl/AnghaBench/postgres/contrib/btree_gist/extr_btree_bit.c_gbt_bit_xfrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VARHDRSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @gbt_bit_xfrm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @gbt_bit_xfrm(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @VARBITBYTES(i32* %7)
  %9 = load i32, i32* @VARHDRSZ, align 4
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @INTALIGN(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @palloc(i32 %13)
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %3, align 8
  br label %16

16:                                               ; preds = %20, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i32*, i32** %3, align 8
  %22 = bitcast i32* %21 to i8*
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  store i8 0, i8* %26, align 1
  br label %16

27:                                               ; preds = %16
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @SET_VARSIZE(i32* %28, i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i64 @VARDATA(i32* %31)
  %33 = inttoptr i64 %32 to i8*
  %34 = load i32*, i32** %2, align 8
  %35 = call i64 @VARBITS(i32* %34)
  %36 = inttoptr i64 %35 to i8*
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @VARBITBYTES(i32* %37)
  %39 = call i32 @memcpy(i8* %33, i8* %36, i32 %38)
  %40 = load i32*, i32** %3, align 8
  ret i32* %40
}

declare dso_local i32 @VARBITBYTES(i32*) #1

declare dso_local i32 @INTALIGN(i32) #1

declare dso_local i64 @palloc(i32) #1

declare dso_local i32 @SET_VARSIZE(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @VARDATA(i32*) #1

declare dso_local i64 @VARBITS(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
