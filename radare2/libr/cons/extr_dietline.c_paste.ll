; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_dietline.c_paste.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_dietline.c_paste.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i8*, i32, i32 }

@I = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@enable_yank_pop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @paste to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @paste() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 1), align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %39

6:                                                ; preds = %0
  %7 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 1), align 8
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i8, i8* %7, i64 %9
  store i8* %10, i8** %1, align 8
  %11 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 2), align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8*, i8** %1, align 8
  %16 = ptrtoint i8* %14 to i64
  %17 = ptrtoint i8* %15 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %2, align 4
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 1), align 8
  %21 = call i32 @strlen(i64 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 2), align 4
  %24 = add nsw i32 %23, %22
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 2), align 4
  %25 = load i8*, i8** %1, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8*, i8** %1, align 8
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @memmove(i8* %28, i8* %29, i32 %30)
  %32 = load i8*, i8** %1, align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 1), align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @memcpy(i8* %32, i64 %33, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 1), align 8
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 1), align 8
  store i32 1, i32* @enable_yank_pop, align 4
  br label %39

39:                                               ; preds = %6, %0
  ret void
}

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
