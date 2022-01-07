; ModuleID = '/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lwan_append_str_escaped_to_strbuf.c'
source_filename = "/home/carl/AnghaBench/lwan/src/lib/extr_lwan-template.c_lwan_append_str_escaped_to_strbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_strbuf = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"&#x27;\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"&#x2f;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_append_str_escaped_to_strbuf(%struct.lwan_strbuf* %0, i8* %1) #0 {
  %3 = alloca %struct.lwan_strbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.lwan_strbuf* %0, %struct.lwan_strbuf** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @UNLIKELY(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %93

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to i8**
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @UNLIKELY(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %93

25:                                               ; preds = %14
  %26 = load i8*, i8** %5, align 8
  store i8* %26, i8** %6, align 8
  br label %27

27:                                               ; preds = %90, %25
  %28 = load i8*, i8** %6, align 8
  %29 = load i8, i8* %28, align 1
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %31, label %93

31:                                               ; preds = %27
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 60
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %3, align 8
  %38 = call i32 @lwan_strbuf_append_str(%struct.lwan_strbuf* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  br label %89

39:                                               ; preds = %31
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 62
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %3, align 8
  %46 = call i32 @lwan_strbuf_append_str(%struct.lwan_strbuf* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %88

47:                                               ; preds = %39
  %48 = load i8*, i8** %6, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 38
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %3, align 8
  %54 = call i32 @lwan_strbuf_append_str(%struct.lwan_strbuf* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  br label %87

55:                                               ; preds = %47
  %56 = load i8*, i8** %6, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 34
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %3, align 8
  %62 = call i32 @lwan_strbuf_append_str(%struct.lwan_strbuf* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  br label %86

63:                                               ; preds = %55
  %64 = load i8*, i8** %6, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 39
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %3, align 8
  %70 = call i32 @lwan_strbuf_append_str(%struct.lwan_strbuf* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  br label %85

71:                                               ; preds = %63
  %72 = load i8*, i8** %6, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 47
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %3, align 8
  %78 = call i32 @lwan_strbuf_append_str(%struct.lwan_strbuf* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  br label %84

79:                                               ; preds = %71
  %80 = load %struct.lwan_strbuf*, %struct.lwan_strbuf** %3, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = load i8, i8* %81, align 1
  %83 = call i32 @lwan_strbuf_append_char(%struct.lwan_strbuf* %80, i8 signext %82)
  br label %84

84:                                               ; preds = %79, %76
  br label %85

85:                                               ; preds = %84, %68
  br label %86

86:                                               ; preds = %85, %60
  br label %87

87:                                               ; preds = %86, %52
  br label %88

88:                                               ; preds = %87, %44
  br label %89

89:                                               ; preds = %88, %36
  br label %90

90:                                               ; preds = %89
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %6, align 8
  br label %27

93:                                               ; preds = %13, %24, %27
  ret void
}

declare dso_local i64 @UNLIKELY(i32) #1

declare dso_local i32 @lwan_strbuf_append_str(%struct.lwan_strbuf*, i8*, i32) #1

declare dso_local i32 @lwan_strbuf_append_char(%struct.lwan_strbuf*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
