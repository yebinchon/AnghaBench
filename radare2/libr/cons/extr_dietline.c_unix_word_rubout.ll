; ModuleID = '/home/carl/AnghaBench/radare2/libr/cons/extr_dietline.c_unix_word_rubout.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/cons/extr_dietline.c_unix_word_rubout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i8*, i32 }

@I = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @unix_word_rubout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unix_word_rubout() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %91

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %7 = sub nsw i32 %6, 1
  store i32 %7, i32* %1, align 4
  br label %8

8:                                                ; preds = %22, %5
  %9 = load i32, i32* %1, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 1), align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 32
  br label %19

19:                                               ; preds = %11, %8
  %20 = phi i1 [ false, %8 ], [ %18, %11 ]
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %1, align 4
  br label %8

25:                                               ; preds = %19
  br label %26

26:                                               ; preds = %40, %25
  %27 = load i32, i32* %1, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 1), align 8
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 32
  br label %37

37:                                               ; preds = %29, %26
  %38 = phi i1 [ false, %26 ], [ %36, %29 ]
  br i1 %38, label %39, label %43

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %1, align 4
  br label %26

43:                                               ; preds = %37
  %44 = load i32, i32* %1, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %1, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %1, align 4
  br label %54

49:                                               ; preds = %43
  %50 = load i32, i32* %1, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %1, align 4
  br label %53

53:                                               ; preds = %52, %49
  br label %54

54:                                               ; preds = %53, %46
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 2), align 8
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  store i32 %59, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 2), align 8
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %62 = load i32, i32* %1, align 4
  %63 = sub nsw i32 %61, %62
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %2, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 1), align 8
  %66 = call i32 @free(i32 %65)
  %67 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 1), align 8
  %68 = load i32, i32* %1, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i32, i32* %2, align 4
  %72 = call i32 @r_str_ndup(i8* %70, i32 %71)
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 1), align 8
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 1), align 8
  %74 = call i32 @r_line_clipboard_push(i32 %73)
  %75 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 1), align 8
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 1), align 8
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 2), align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  %85 = sub nsw i32 %83, %84
  %86 = add nsw i32 %85, 1
  %87 = call i32 @memmove(i8* %78, i8* %82, i32 %86)
  %88 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 1), align 8
  %89 = call i32 @strlen(i8* %88)
  store i32 %89, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 2), align 8
  %90 = load i32, i32* %1, align 4
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @I, i32 0, i32 0, i32 0), align 8
  br label %91

91:                                               ; preds = %60, %0
  ret void
}

declare dso_local i32 @free(i32) #1

declare dso_local i32 @r_str_ndup(i8*, i32) #1

declare dso_local i32 @r_line_clipboard_push(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
