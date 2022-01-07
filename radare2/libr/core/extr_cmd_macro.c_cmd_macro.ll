; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_macro.c_cmd_macro.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_macro.c_cmd_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@help_msg_lparen = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid syntax for macro\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmd_macro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_macro(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  switch i32 %15, label %48 [
    i32 41, label %16
    i32 45, label %24
    i32 42, label %32
    i32 0, label %38
    i32 40, label %44
    i32 63, label %44
  ]

16:                                               ; preds = %2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = call i32 @r_cmd_macro_break(i32* %20, i8* %22)
  br label %146

24:                                               ; preds = %2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = call i32 @r_cmd_macro_rm(i32* %28, i8* %30)
  br label %146

32:                                               ; preds = %2
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @r_cmd_macro_meta(i32* %36)
  br label %146

38:                                               ; preds = %2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @r_cmd_macro_list(i32* %42)
  br label %146

44:                                               ; preds = %2, %2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = load i32, i32* @help_msg_lparen, align 4
  %47 = call i32 @r_core_cmd_help(%struct.TYPE_5__* %45, i32 %46)
  br label %146

48:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %49 = load i8*, i8** %4, align 8
  %50 = call i8* @strdup(i8* %49)
  store i8* %50, i8** %5, align 8
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %89, %48
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %92

58:                                               ; preds = %51
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  switch i32 %64, label %88 [
    i32 40, label %65
    i32 41, label %68
  ]

65:                                               ; preds = %58
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %88

68:                                               ; preds = %58
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %9, align 4
  %71 = load i8*, i8** %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 40
  br i1 %78, label %79, label %87

79:                                               ; preds = %68
  %80 = load i8*, i8** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  store i8 0, i8* %84, align 1
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 2
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %79, %68
  br label %88

88:                                               ; preds = %58, %87, %65
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %51

92:                                               ; preds = %51
  %93 = load i8*, i8** %5, align 8
  %94 = load i8*, i8** %5, align 8
  %95 = call i32 @strlen(i8* %94)
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %93, i64 %97
  store i8 0, i8* %98, align 1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i8*, i8** %5, align 8
  %104 = call i32 @r_cmd_macro_add(i32* %102, i8* %103)
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %143

107:                                              ; preds = %92
  %108 = load i8*, i8** %5, align 8
  %109 = call i8* @strchr(i8* %108, i8 signext 32)
  store i8* %109, i8** %10, align 8
  %110 = load i8*, i8** %10, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load i8*, i8** %5, align 8
  %114 = call i8* @strchr(i8* %113, i8 signext 44)
  store i8* %114, i8** %10, align 8
  br label %115

115:                                              ; preds = %112, %107
  %116 = load i8*, i8** %10, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %140

118:                                              ; preds = %115
  %119 = load i8*, i8** %10, align 8
  store i8 32, i8* %119, align 1
  %120 = load i8*, i8** %10, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  %122 = load i8*, i8** %5, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = ptrtoint i8* %125 to i32
  %127 = load i8*, i8** %5, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = call i32 @strlen(i8* %130)
  %132 = add nsw i32 %131, 1
  %133 = call i32 @memmove(i8* %121, i32 %126, i32 %132)
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i8*, i8** %5, align 8
  %139 = call i32 @r_cmd_macro_call(i32* %137, i8* %138)
  br label %142

140:                                              ; preds = %115
  %141 = call i32 @eprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %118
  br label %143

143:                                              ; preds = %142, %92
  %144 = load i8*, i8** %5, align 8
  %145 = call i32 @free(i8* %144)
  br label %146

146:                                              ; preds = %143, %44, %38, %32, %24, %16
  ret i32 0
}

declare dso_local i32 @r_cmd_macro_break(i32*, i8*) #1

declare dso_local i32 @r_cmd_macro_rm(i32*, i8*) #1

declare dso_local i32 @r_cmd_macro_meta(i32*) #1

declare dso_local i32 @r_cmd_macro_list(i32*) #1

declare dso_local i32 @r_core_cmd_help(%struct.TYPE_5__*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @r_cmd_macro_add(i32*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @memmove(i8*, i32, i32) #1

declare dso_local i32 @r_cmd_macro_call(i32*, i8*) #1

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
