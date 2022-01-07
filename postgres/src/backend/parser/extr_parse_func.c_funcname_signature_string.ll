; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_func.c_funcname_signature_string.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/parser/extr_parse_func.c_funcname_signature_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"%s(\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s => \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @funcname_signature_string(i8* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = call i32 @initStringInfo(%struct.TYPE_6__* %9)
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @appendStringInfo(%struct.TYPE_6__* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @list_length(i32* %17)
  %19 = sub nsw i32 %16, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = call i32* @list_head(i32* %20)
  store i32* %21, i32** %11, align 8
  store i32 0, i32* %12, align 4
  br label %22

22:                                               ; preds = %51, %4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %22
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @appendStringInfoString(%struct.TYPE_6__* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i32*, i32** %11, align 8
  %37 = call i64 @lfirst(i32* %36)
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @appendStringInfo(%struct.TYPE_6__* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = call i32* @lnext(i32* %40, i32* %41)
  store i32* %42, i32** %11, align 8
  br label %43

43:                                               ; preds = %35, %31
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @format_type_be(i32 %48)
  %50 = call i32 @appendStringInfoString(%struct.TYPE_6__* %9, i8* %49)
  br label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %12, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %12, align 4
  br label %22

54:                                               ; preds = %22
  %55 = call i32 @appendStringInfoChar(%struct.TYPE_6__* %9, i8 signext 41)
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  ret i8* %57
}

declare dso_local i32 @initStringInfo(%struct.TYPE_6__*) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @list_length(i32*) #1

declare dso_local i32* @list_head(i32*) #1

declare dso_local i32 @appendStringInfoString(%struct.TYPE_6__*, i8*) #1

declare dso_local i64 @lfirst(i32*) #1

declare dso_local i32* @lnext(i32*, i32*) #1

declare dso_local i8* @format_type_be(i32) #1

declare dso_local i32 @appendStringInfoChar(%struct.TYPE_6__*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
