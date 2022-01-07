; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_dietline.c___delete_prev_char.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_dietline.c___delete_prev_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i8* }

@I = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__delete_prev_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__delete_prev_char() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 1), align 8
  %4 = icmp slt i64 %2, %3
  br i1 %4, label %5, label %38

5:                                                ; preds = %0
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %37

8:                                                ; preds = %5
  %9 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 2), align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %11 = getelementptr inbounds i8, i8* %9, i64 %10
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @r_str_utf8_charsize_prev(i8* %11, i32 %13)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %18 = sub nsw i64 %17, %16
  store i64 %18, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %19 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 2), align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 2), align 8
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 2), align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = call i32 @strlen(i8* %30)
  %32 = call i32 @memmove(i8* %21, i8* %27, i32 %31)
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 1), align 8
  %36 = sub nsw i64 %35, %34
  store i64 %36, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 1), align 8
  br label %37

37:                                               ; preds = %8, %5
  br label %48

38:                                               ; preds = %0
  %39 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 2), align 8
  %40 = call i64 @r_str_utf8_charsize_last(i8* %39)
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 1), align 8
  %42 = sub nsw i64 %41, %40
  store i64 %42, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 1), align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 1), align 8
  store i64 %43, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 1), align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 1), align 8
  br label %47

47:                                               ; preds = %46, %38
  br label %48

48:                                               ; preds = %47, %37
  %49 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 2), align 8
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 1), align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  br label %55

55:                                               ; preds = %54, %48
  ret void
}

declare dso_local i32 @r_str_utf8_charsize_prev(i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @r_str_utf8_charsize_last(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
