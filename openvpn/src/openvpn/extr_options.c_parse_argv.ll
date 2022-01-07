; ModuleID = '/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_parse_argv.c'
source_filename = "/home/carl/AnghaBench/openvpn/src/openvpn/extr_options.c_parse_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32 }
%struct.env_set = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@MAX_PARMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.2 = private unnamed_addr constant [81 x i8] c"I'm trying to parse \22%s\22 as an --option parameter but I don't see a leading '--'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_argv(%struct.options* %0, i32 %1, i8** %2, i32 %3, i32 %4, i32* %5, %struct.env_set* %6) #0 {
  %8 = alloca %struct.options*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.env_set*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  store %struct.options* %0, %struct.options** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8** %2, i8*** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store %struct.env_set* %6, %struct.env_set** %14, align 8
  %22 = load i32, i32* %9, align 4
  %23 = icmp sle i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %7
  %25 = call i32 (...) @usage()
  br label %26

26:                                               ; preds = %24, %7
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %53

29:                                               ; preds = %26
  %30 = load i8**, i8*** %10, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i64 @strncmp(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %29
  %36 = load i32, i32* @MAX_PARMS, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %17, align 8
  %39 = alloca i8*, i64 %37, align 16
  store i64 %37, i64* %18, align 8
  %40 = call i32 @CLEAR(i8** %39)
  %41 = getelementptr inbounds i8*, i8** %39, i64 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %41, align 16
  %42 = load i8**, i8*** %10, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %39, i64 1
  store i8* %44, i8** %45, align 8
  %46 = load %struct.options*, %struct.options** %8, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32*, i32** %13, align 8
  %50 = load %struct.env_set*, %struct.env_set** %14, align 8
  %51 = call i32 @add_option(%struct.options* %46, i8** %39, i32* null, i32 0, i32 0, i32 %47, i32 %48, i32* %49, %struct.env_set* %50)
  %52 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %52)
  br label %132

53:                                               ; preds = %29, %26
  store i32 1, i32* %15, align 4
  br label %54

54:                                               ; preds = %128, %53
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %131

58:                                               ; preds = %54
  %59 = load i32, i32* @MAX_PARMS, align 4
  %60 = zext i32 %59 to i64
  %61 = call i8* @llvm.stacksave()
  store i8* %61, i8** %19, align 8
  %62 = alloca i8*, i64 %60, align 16
  store i64 %60, i64* %20, align 8
  %63 = call i32 @CLEAR(i8** %62)
  %64 = load i8**, i8*** %10, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %62, i64 0
  store i8* %68, i8** %69, align 16
  %70 = getelementptr inbounds i8*, i8** %62, i64 0
  %71 = load i8*, i8** %70, align 16
  %72 = call i64 @strncmp(i8* %71, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %58
  %75 = load i32, i32* %11, align 4
  %76 = getelementptr inbounds i8*, i8** %62, i64 0
  %77 = load i8*, i8** %76, align 16
  %78 = call i32 @msg(i32 %75, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  br label %83

79:                                               ; preds = %58
  %80 = getelementptr inbounds i8*, i8** %62, i64 0
  %81 = load i8*, i8** %80, align 16
  %82 = getelementptr inbounds i8, i8* %81, i64 2
  store i8* %82, i8** %80, align 16
  br label %83

83:                                               ; preds = %79, %74
  store i32 1, i32* %16, align 4
  br label %84

84:                                               ; preds = %113, %83
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* @MAX_PARMS, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %116

88:                                               ; preds = %84
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %89, %90
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %88
  %95 = load i8**, i8*** %10, align 8
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %16, align 4
  %98 = add nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %95, i64 %99
  %101 = load i8*, i8** %100, align 8
  store i8* %101, i8** %21, align 8
  %102 = load i8*, i8** %21, align 8
  %103 = call i64 @strncmp(i8* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %94
  %106 = load i8*, i8** %21, align 8
  %107 = load i32, i32* %16, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8*, i8** %62, i64 %108
  store i8* %106, i8** %109, align 8
  br label %111

110:                                              ; preds = %94
  br label %116

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %111, %88
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %16, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %16, align 4
  br label %84

116:                                              ; preds = %110, %84
  %117 = load %struct.options*, %struct.options** %8, align 8
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32*, i32** %13, align 8
  %121 = load %struct.env_set*, %struct.env_set** %14, align 8
  %122 = call i32 @add_option(%struct.options* %117, i8** %62, i32* null, i32 0, i32 0, i32 %118, i32 %119, i32* %120, %struct.env_set* %121)
  %123 = load i32, i32* %16, align 4
  %124 = sub nsw i32 %123, 1
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %15, align 4
  %127 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %127)
  br label %128

128:                                              ; preds = %116
  %129 = load i32, i32* %15, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %15, align 4
  br label %54

131:                                              ; preds = %54
  br label %132

132:                                              ; preds = %131, %35
  ret void
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @CLEAR(i8**) #1

declare dso_local i32 @add_option(%struct.options*, i8**, i32*, i32, i32, i32, i32, i32*, %struct.env_set*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @msg(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
