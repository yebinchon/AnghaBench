; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_dietline.c_backward_kill_Word.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_dietline.c_backward_kill_Word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32* }

@I = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MAJOR_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @backward_kill_Word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @backward_kill_Word() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %93

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  store i32 %6, i32* %1, align 4
  br label %7

7:                                                ; preds = %22, %5
  %8 = load i32, i32* %1, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 2), align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MAJOR_BREAK, align 4
  %17 = call i64 @is_word_break_char(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %10, %7
  %20 = phi i1 [ false, %7 ], [ %18, %10 ]
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %1, align 4
  br label %7

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %42, %25
  %27 = load i32, i32* %1, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 2), align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @MAJOR_BREAK, align 4
  %36 = call i64 @is_word_break_char(i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  %38 = xor i1 %37, true
  br label %39

39:                                               ; preds = %29, %26
  %40 = phi i1 [ false, %26 ], [ %38, %29 ]
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %1, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %1, align 4
  br label %26

45:                                               ; preds = %39
  %46 = load i32, i32* %1, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %56

51:                                               ; preds = %45
  %52 = load i32, i32* %1, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %1, align 4
  br label %55

55:                                               ; preds = %54, %51
  br label %56

56:                                               ; preds = %55, %48
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 1), align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 1), align 4
  br label %62

62:                                               ; preds = %60, %56
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %64 = load i32, i32* %1, align 4
  %65 = sub nsw i32 %63, %64
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %2, align 4
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 1), align 8
  %68 = call i32 @free(i32 %67)
  %69 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 2), align 8
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %2, align 4
  %74 = call i32 @r_str_ndup(i32* %72, i32 %73)
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 1), align 8
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 1), align 8
  %76 = call i32 @r_line_clipboard_push(i32 %75)
  %77 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 2), align 8
  %78 = load i32, i32* %1, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 2), align 8
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 1), align 4
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %87 = sub nsw i32 %85, %86
  %88 = add nsw i32 %87, 1
  %89 = call i32 @memmove(i32* %80, i32* %84, i32 %88)
  %90 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 2), align 8
  %91 = call i32 @strlen(i32* %90)
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 1), align 4
  %92 = load i32, i32* %1, align 4
  store i32 %92, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  br label %93

93:                                               ; preds = %62, %0
  ret void
}

declare dso_local i64 @is_word_break_char(i32, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @r_str_ndup(i32*, i32) #1

declare dso_local i32 @r_line_clipboard_push(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @strlen(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
