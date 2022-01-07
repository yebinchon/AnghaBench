; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/p/extr_..formatninnin.h_gb_add_cardtype.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/p/extr_..formatninnin.h_gb_add_cardtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"\0Acard\09\00", align 1
@gb_card_type_str = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"XXX\00", align 1
@GB_CAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gb_add_cardtype(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @strcat(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %20 [
    i32 128, label %8
    i32 129, label %8
    i32 130, label %8
    i32 21, label %17
    i32 22, label %17
    i32 23, label %17
  ]

8:                                                ; preds = %2, %2, %2
  %9 = load i8*, i8** %3, align 8
  %10 = load i8**, i8*** @gb_card_type_str, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 %11, 240
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8*, i8** %10, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strcat(i8* %9, i8* %15)
  br label %35

17:                                               ; preds = %2, %2, %2
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strcat(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %35

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @GB_CAM, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 @strcat(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %35

27:                                               ; preds = %20
  %28 = load i8*, i8** %3, align 8
  %29 = load i8**, i8*** @gb_card_type_str, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strcat(i8* %28, i8* %33)
  br label %35

35:                                               ; preds = %24, %27, %17, %8
  ret void
}

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
