; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsutils.c_debugstr_jsval.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/jscript/extr_jsutils.c_debugstr_jsval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"obj(%p)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"str(%s)\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"false\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @debugstr_jsval(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @jsval_type(i32 %4)
  switch i32 %5, label %31 [
    i32 129, label %6
    i32 133, label %7
    i32 131, label %8
    i32 130, label %12
    i32 132, label %17
    i32 134, label %21
    i32 128, label %27
  ]

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %33

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %33

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @get_object(i32 %9)
  %11 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %10)
  store i8* %11, i8** %2, align 8
  br label %33

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @get_string(i32 %13)
  %15 = call i32 @debugstr_jsstr(i32 %14)
  %16 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %15)
  store i8* %16, i8** %2, align 8
  br label %33

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @get_number(i32 %18)
  %20 = call i8* @wine_dbg_sprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %19)
  store i8* %20, i8** %2, align 8
  br label %33

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @get_bool(i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)
  store i8* %26, i8** %2, align 8
  br label %33

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @get_variant(i32 %28)
  %30 = call i8* @debugstr_variant(i32 %29)
  store i8* %30, i8** %2, align 8
  br label %33

31:                                               ; preds = %1
  %32 = call i32 @assert(i32 0)
  store i8* null, i8** %2, align 8
  br label %33

33:                                               ; preds = %31, %27, %21, %17, %12, %8, %7, %6
  %34 = load i8*, i8** %2, align 8
  ret i8* %34
}

declare dso_local i32 @jsval_type(i32) #1

declare dso_local i8* @wine_dbg_sprintf(i8*, i32) #1

declare dso_local i32 @get_object(i32) #1

declare dso_local i32 @debugstr_jsstr(i32) #1

declare dso_local i32 @get_string(i32) #1

declare dso_local i32 @get_number(i32) #1

declare dso_local i32 @get_bool(i32) #1

declare dso_local i8* @debugstr_variant(i32) #1

declare dso_local i32 @get_variant(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
