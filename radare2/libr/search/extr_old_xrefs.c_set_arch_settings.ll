; ModuleID = '/home/carl/AnghaBench/radare2/libr/search/extr_old_xrefs.c_set_arch_settings.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/search/extr_old_xrefs.c_set_arch_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arch = common dso_local global i32 0, align 4
@gamme = common dso_local global i32 0, align 4
@delta = common dso_local global i32 0, align 4
@size = common dso_local global i32 0, align 4
@ma = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"\7FELF\00", align 1
@endian = common dso_local global i32 0, align 4
@quite = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"# -a x86\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"# -a ppc\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"# -a arm\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Unsupported architecture '%04x'.\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"MZ\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"PE\00\00\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"Unknown architecture.\0A\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"Plz. gimmie an architecture. (xrefs -a [arch])\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_arch_settings() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = load i32, i32* @arch, align 4
  switch i32 %5, label %119 [
    i32 129, label %6
    i32 131, label %7
    i32 128, label %8
    i32 130, label %9
  ]

6:                                                ; preds = %0
  store i32 1, i32* @gamme, align 4
  store i32 1, i32* @delta, align 4
  store i32 3, i32* @size, align 4
  br label %119

7:                                                ; preds = %0
  store i32 -1, i32* @gamme, align 4
  store i32 1, i32* @delta, align 4
  store i32 3, i32* @size, align 4
  br label %119

8:                                                ; preds = %0
  store i32 1, i32* @gamme, align 4
  store i32 0, i32* @delta, align 4
  store i32 4, i32* @size, align 4
  br label %119

9:                                                ; preds = %0
  %10 = load i32*, i32** @ma, align 8
  %11 = call i32 @memcmp(i32* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %60, label %13

13:                                               ; preds = %9
  %14 = load i32*, i32** @ma, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 18
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 8
  %18 = load i32*, i32** @ma, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 19
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %2, align 2
  %23 = load i16, i16* %2, align 2
  %24 = sext i16 %23 to i32
  switch i32 %24, label %55 [
    i32 768, label %25
    i32 20, label %35
    i32 10240, label %45
  ]

25:                                               ; preds = %13
  %26 = load i32, i32* @endian, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 1, i32* @endian, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* @quite, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %29
  store i32 128, i32* @arch, align 4
  store i32 1, i32* @endian, align 4
  store i32 1, i32* %1, align 4
  br label %120

35:                                               ; preds = %13
  %36 = load i32, i32* @endian, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* @endian, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* @quite, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %39
  store i32 129, i32* @arch, align 4
  store i32 1, i32* %1, align 4
  br label %120

45:                                               ; preds = %13
  %46 = load i32, i32* @endian, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 1, i32* @endian, align 4
  br label %49

49:                                               ; preds = %48, %45
  %50 = load i32, i32* @quite, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %49
  store i32 131, i32* @arch, align 4
  store i32 1, i32* %1, align 4
  br label %120

55:                                               ; preds = %13
  %56 = load i16, i16* %2, align 2
  %57 = sext i16 %56 to i32
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  %59 = call i32 @exit(i32 1) #3
  unreachable

60:                                               ; preds = %9
  %61 = load i32*, i32** @ma, align 8
  %62 = call i32 @memcmp(i32* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 2)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %113, label %64

64:                                               ; preds = %60
  %65 = load i32*, i32** @ma, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 60
  %67 = load i32, i32* %66, align 4
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %3, align 2
  %69 = load i32*, i32** @ma, align 8
  %70 = load i16, i16* %3, align 2
  %71 = zext i16 %70 to i32
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = call i32 @memcmp(i32* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %112, label %76

76:                                               ; preds = %64
  %77 = load i32*, i32** @ma, align 8
  %78 = load i16, i16* %3, align 2
  %79 = zext i16 %78 to i32
  %80 = add nsw i32 %79, 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 8
  %85 = load i32*, i32** @ma, align 8
  %86 = load i16, i16* %3, align 2
  %87 = zext i16 %86 to i32
  %88 = add nsw i32 %87, 5
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %84, %91
  %93 = trunc i32 %92 to i16
  store i16 %93, i16* %4, align 2
  %94 = load i16, i16* %4, align 2
  %95 = zext i16 %94 to i32
  switch i32 %95, label %108 [
    i32 19457, label %96
    i32 49153, label %102
  ]

96:                                               ; preds = %76
  %97 = load i32, i32* @endian, align 4
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 1, i32* @endian, align 4
  br label %100

100:                                              ; preds = %99, %96
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  store i32 128, i32* @arch, align 4
  store i32 1, i32* @endian, align 4
  store i32 1, i32* %1, align 4
  br label %120

102:                                              ; preds = %76
  %103 = load i32, i32* @endian, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 1, i32* @endian, align 4
  br label %106

106:                                              ; preds = %105, %102
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  store i32 131, i32* @arch, align 4
  store i32 1, i32* @endian, align 4
  store i32 1, i32* %1, align 4
  br label %120

108:                                              ; preds = %76
  %109 = load i32, i32* @stderr, align 4
  %110 = call i32 @fprintf(i32 %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108
  br label %112

112:                                              ; preds = %111, %64
  br label %117

113:                                              ; preds = %60
  %114 = load i32, i32* @stderr, align 4
  %115 = call i32 @fprintf(i32 %114, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0))
  %116 = call i32 @exit(i32 1) #3
  unreachable

117:                                              ; preds = %112
  br label %118

118:                                              ; preds = %117
  br label %119

119:                                              ; preds = %118, %0, %8, %7, %6
  store i32 0, i32* %1, align 4
  br label %120

120:                                              ; preds = %119, %106, %100, %54, %44, %34
  %121 = load i32, i32* %1, align 4
  ret i32 %121
}

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
