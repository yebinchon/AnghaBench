; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_opt.c_opt_init.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_opt.c_opt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i64 }

@argc = common dso_local global i32 0, align 4
@argv = common dso_local global i8** null, align 8
@opts = common dso_local global %struct.TYPE_5__* null, align 8
@unknown = common dso_local global %struct.TYPE_5__* null, align 8
@OPT_HELP_STR = common dso_local global i8* null, align 8
@OPT_MORE_STR = common dso_local global i8* null, align 8
@OPT_SECTION_STR = common dso_local global i8* null, align 8
@prog = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @opt_init(i32 %0, i8** %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* @argc, align 4
  %11 = load i8**, i8*** %5, align 8
  store i8** %11, i8*** @argv, align 8
  %12 = call i32 (...) @opt_begin()
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** @opts, align 8
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @opt_progname(i8* %16)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** @unknown, align 8
  br label %18

18:                                               ; preds = %119, %3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %122

23:                                               ; preds = %18
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = load i8*, i8** @OPT_HELP_STR, align 8
  %28 = icmp eq i8* %26, %27
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** @OPT_MORE_STR, align 8
  %34 = icmp eq i8* %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8*, i8** @OPT_SECTION_STR, align 8
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %29, %23
  br label %119

42:                                               ; preds = %35
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %9, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 45
  %53 = zext i1 %52 to i32
  %54 = call i32 @OPENSSL_assert(i32 %53)
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = call i32 @OPENSSL_assert(i32 %59)
  %61 = load i32, i32* %9, align 4
  switch i32 %61, label %63 [
    i32 0, label %62
    i32 45, label %62
    i32 47, label %62
    i32 60, label %62
    i32 62, label %62
    i32 69, label %62
    i32 70, label %62
    i32 77, label %62
    i32 85, label %62
    i32 102, label %62
    i32 108, label %62
    i32 110, label %62
    i32 112, label %62
    i32 115, label %62
    i32 117, label %62
    i32 99, label %62
    i32 58, label %62
  ]

62:                                               ; preds = %42, %42, %42, %42, %42, %42, %42, %42, %42, %42, %42, %42, %42, %42, %42, %42, %42
  br label %65

63:                                               ; preds = %42
  %64 = call i32 @OPENSSL_assert(i32 0)
  br label %65

65:                                               ; preds = %63, %62
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 1
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %7, align 8
  br label %68

68:                                               ; preds = %88, %65
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %91

73:                                               ; preds = %68
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i64 @strcmp(i8* %76, i8* %79)
  %81 = icmp eq i64 %80, 0
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = call i32 @OPENSSL_assert(i32 %86)
  br label %88

88:                                               ; preds = %73
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 1
  store %struct.TYPE_5__* %90, %struct.TYPE_5__** %7, align 8
  br label %68

91:                                               ; preds = %68
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %91
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** @unknown, align 8
  %101 = icmp eq %struct.TYPE_5__* %100, null
  %102 = zext i1 %101 to i32
  %103 = call i32 @OPENSSL_assert(i32 %102)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %104, %struct.TYPE_5__** @unknown, align 8
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** @unknown, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %99
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** @unknown, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 45
  br label %114

114:                                              ; preds = %109, %99
  %115 = phi i1 [ true, %99 ], [ %113, %109 ]
  %116 = zext i1 %115 to i32
  %117 = call i32 @OPENSSL_assert(i32 %116)
  br label %118

118:                                              ; preds = %114, %91
  br label %119

119:                                              ; preds = %118, %41
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 1
  store %struct.TYPE_5__* %121, %struct.TYPE_5__** %6, align 8
  br label %18

122:                                              ; preds = %18
  %123 = load i8*, i8** @prog, align 8
  ret i8* %123
}

declare dso_local i32 @opt_begin(...) #1

declare dso_local i32 @opt_progname(i8*) #1

declare dso_local i32 @OPENSSL_assert(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
