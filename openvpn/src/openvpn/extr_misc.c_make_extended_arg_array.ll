; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_misc.c_make_extended_arg_array.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_misc.c_make_extended_arg_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc_arena = type { i32 }

@INLINE_FILE_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @make_extended_arg_array(i8** %0, %struct.gc_arena* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.gc_arena*, align 8
  %6 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store %struct.gc_arena* %1, %struct.gc_arena** %5, align 8
  %7 = load i8**, i8*** %4, align 8
  %8 = call i32 @string_array_len(i8** %7)
  store i32 %8, i32* %6, align 4
  %9 = load i8**, i8*** %4, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  %12 = load i32, i32* @INLINE_FILE_TAG, align 4
  %13 = call i32 @strcmp(i8* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i8**, i8*** %4, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.gc_arena*, %struct.gc_arena** %5, align 8
  %23 = call i8** @make_inline_array(i8* %21, %struct.gc_arena* %22)
  store i8** %23, i8*** %3, align 8
  br label %55

24:                                               ; preds = %15, %2
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct.gc_arena*, %struct.gc_arena** %5, align 8
  %29 = call i8** @make_arg_array(i8* null, i8* null, %struct.gc_arena* %28)
  store i8** %29, i8*** %3, align 8
  br label %55

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i8**, i8*** %4, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 0
  %36 = load i8*, i8** %35, align 8
  %37 = load %struct.gc_arena*, %struct.gc_arena** %5, align 8
  %38 = call i8** @make_arg_array(i8* %36, i8* null, %struct.gc_arena* %37)
  store i8** %38, i8*** %3, align 8
  br label %55

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = load i8**, i8*** %4, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8**, i8*** %4, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 1
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.gc_arena*, %struct.gc_arena** %5, align 8
  %50 = call i8** @make_arg_array(i8* %45, i8* %48, %struct.gc_arena* %49)
  store i8** %50, i8*** %3, align 8
  br label %55

51:                                               ; preds = %39
  %52 = load i8**, i8*** %4, align 8
  %53 = load %struct.gc_arena*, %struct.gc_arena** %5, align 8
  %54 = call i8** @make_arg_copy(i8** %52, %struct.gc_arena* %53)
  store i8** %54, i8*** %3, align 8
  br label %55

55:                                               ; preds = %51, %42, %33, %27, %18
  %56 = load i8**, i8*** %3, align 8
  ret i8** %56
}

declare dso_local i32 @string_array_len(i8**) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i8** @make_inline_array(i8*, %struct.gc_arena*) #1

declare dso_local i8** @make_arg_array(i8*, i8*, %struct.gc_arena*) #1

declare dso_local i8** @make_arg_copy(i8**, %struct.gc_arena*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
