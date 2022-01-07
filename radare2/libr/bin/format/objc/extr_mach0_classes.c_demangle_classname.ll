; ModuleID = '/home/carl/AnghaBench/radare2/libr/bin/format/objc/extr_mach0_classes.c_demangle_classname.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/bin/format/objc/extr_mach0_classes.c_demangle_classname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"_TtC\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @demangle_classname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @demangle_classname(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %148, label %15

15:                                               ; preds = %1
  store i32 4, i32* %10, align 4
  br label %16

16:                                               ; preds = %44, %15
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %16
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp slt i32 %30, 48
  br i1 %31, label %40, label %32

32:                                               ; preds = %24
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp sgt i32 %38, 57
  br label %40

40:                                               ; preds = %32, %24
  %41 = phi i1 [ true, %24 ], [ %39, %32 ]
  br label %42

42:                                               ; preds = %40, %16
  %43 = phi i1 [ false, %16 ], [ %41, %40 ]
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %16

47:                                               ; preds = %42
  %48 = load i8*, i8** %3, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = call i32 @atoi(i8* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i8*, i8** %3, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = call i32 @strlen(i8* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %47
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %60, %47
  %65 = load i8*, i8** %3, align 8
  %66 = call i8* @strdup(i8* %65)
  store i8* %66, i8** %2, align 8
  br label %153

67:                                               ; preds = %60
  %68 = load i8*, i8** %3, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = call i8* @skipnum(i8* %71)
  %73 = load i32, i32* %5, align 4
  %74 = call i8* @r_str_ndup(i8* %72, i32 %73)
  store i8* %74, i8** %9, align 8
  %75 = load i8*, i8** %3, align 8
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = call i8* @skipnum(i8* %78)
  %80 = load i8*, i8** %3, align 8
  %81 = ptrtoint i8* %79 to i64
  %82 = ptrtoint i8* %80 to i64
  %83 = sub i64 %81, %82
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %11, align 4
  %88 = load i8*, i8** %3, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 80
  br i1 %94, label %95, label %116

95:                                               ; preds = %67
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  %98 = load i8*, i8** %3, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = call i32 @atoi(i8* %101)
  store i32 %102, i32* %5, align 4
  %103 = load i8*, i8** %3, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = call i8* @skipnum(i8* %106)
  %108 = load i8*, i8** %3, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %95, %67
  %117 = load i8*, i8** %3, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  store i8* %120, i8** %6, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = call i32 @atoi(i8* %121)
  store i32 %122, i32* %5, align 4
  %123 = load i8*, i8** %6, align 8
  %124 = call i32 @strlen(i8* %123)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %116
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %4, align 4
  %130 = icmp sge i32 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %127, %116
  %132 = load i8*, i8** %9, align 8
  %133 = call i32 @free(i8* %132)
  %134 = load i8*, i8** %3, align 8
  %135 = call i8* @strdup(i8* %134)
  store i8* %135, i8** %2, align 8
  br label %153

136:                                              ; preds = %127
  %137 = load i8*, i8** %6, align 8
  %138 = call i8* @skipnum(i8* %137)
  %139 = load i32, i32* %5, align 4
  %140 = call i8* @r_str_ndup(i8* %138, i32 %139)
  store i8* %140, i8** %8, align 8
  %141 = load i8*, i8** %9, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = call i8* @r_str_newf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %141, i8* %142)
  store i8* %143, i8** %7, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = call i32 @free(i8* %144)
  %146 = load i8*, i8** %8, align 8
  %147 = call i32 @free(i8* %146)
  br label %151

148:                                              ; preds = %1
  %149 = load i8*, i8** %3, align 8
  %150 = call i8* @strdup(i8* %149)
  store i8* %150, i8** %7, align 8
  br label %151

151:                                              ; preds = %148, %136
  %152 = load i8*, i8** %7, align 8
  store i8* %152, i8** %2, align 8
  br label %153

153:                                              ; preds = %151, %131, %64
  %154 = load i8*, i8** %2, align 8
  ret i8* %154
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @r_str_ndup(i8*, i32) #1

declare dso_local i8* @skipnum(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @r_str_newf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
