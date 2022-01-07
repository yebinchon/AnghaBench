; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginpostinglist.c_encode_varbyte.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/gin/extr_ginpostinglist.c_encode_varbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**)* @encode_varbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_varbyte(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = load i8*, i8** %6, align 8
  store i8* %7, i8** %5, align 8
  br label %8

8:                                                ; preds = %11, %2
  %9 = load i32, i32* %3, align 4
  %10 = icmp sgt i32 %9, 127
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 127
  %14 = or i32 128, %13
  %15 = trunc i32 %14 to i8
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %5, align 8
  store i8 %15, i8* %16, align 1
  %18 = load i32, i32* %3, align 4
  %19 = ashr i32 %18, 7
  store i32 %19, i32* %3, align 4
  br label %8

20:                                               ; preds = %8
  %21 = load i32, i32* %3, align 4
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %5, align 8
  store i8 %22, i8* %23, align 1
  %25 = load i8*, i8** %5, align 8
  %26 = load i8**, i8*** %4, align 8
  store i8* %25, i8** %26, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
