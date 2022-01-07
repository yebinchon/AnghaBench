; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_gistdesc.c_gist_desc.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/rmgrdesc/extr_gistdesc.c_gist_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XLR_INFO_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gist_desc(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i8* @XLogRecGetData(i32* %7)
  store i8* %8, i8** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @XLogRecGetInfo(i32* %9)
  %11 = load i32, i32* @XLR_INFO_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %40 [
    i32 128, label %15
    i32 130, label %20
    i32 132, label %25
    i32 129, label %30
    i32 131, label %35
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = call i32 @out_gistxlogPageUpdate(i32 %16, i32* %18)
  br label %40

20:                                               ; preds = %2
  %21 = load i32, i32* %3, align 4
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = call i32 @out_gistxlogPageReuse(i32 %21, i32* %23)
  br label %40

25:                                               ; preds = %2
  %26 = load i32, i32* %3, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = call i32 @out_gistxlogDelete(i32 %26, i32* %28)
  br label %40

30:                                               ; preds = %2
  %31 = load i32, i32* %3, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = call i32 @out_gistxlogPageSplit(i32 %31, i32* %33)
  br label %40

35:                                               ; preds = %2
  %36 = load i32, i32* %3, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = call i32 @out_gistxlogPageDelete(i32 %36, i32* %38)
  br label %40

40:                                               ; preds = %2, %35, %30, %25, %20, %15
  ret void
}

declare dso_local i8* @XLogRecGetData(i32*) #1

declare dso_local i32 @XLogRecGetInfo(i32*) #1

declare dso_local i32 @out_gistxlogPageUpdate(i32, i32*) #1

declare dso_local i32 @out_gistxlogPageReuse(i32, i32*) #1

declare dso_local i32 @out_gistxlogDelete(i32, i32*) #1

declare dso_local i32 @out_gistxlogPageSplit(i32, i32*) #1

declare dso_local i32 @out_gistxlogPageDelete(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
