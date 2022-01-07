; ModuleID = '/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_args_excert.c'
source_filename = "/home/carl/AnghaBench/openssl/apps/lib/extr_s_cb.c_args_excert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32*, i32*, i32* }

@bio_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c" %s: Error initialising xcert\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%s: Error adding xcert\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: Key already specified\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: Chain already specified\0A\00", align 1
@OPT_FMT_PEMDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @args_excert(i32 %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %5, align 8
  %7 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %8, %struct.TYPE_5__** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 129
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 128
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = call i32 @ssl_excert_prepend(%struct.TYPE_5__** %6)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @bio_err, align 4
  %24 = call i32 (...) @opt_getprog()
  %25 = call i32 @BIO_printf(i32 %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %101

26:                                               ; preds = %19
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %28, align 8
  br label %29

29:                                               ; preds = %26, %2
  %30 = load i32, i32* %4, align 4
  switch i32 %30, label %100 [
    i32 129, label %31
    i32 128, label %31
    i32 135, label %32
    i32 131, label %51
    i32 133, label %65
    i32 132, label %79
    i32 134, label %82
    i32 130, label %91
  ]

31:                                               ; preds = %29, %29
  store i32 0, i32* %3, align 4
  br label %107

32:                                               ; preds = %29
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = call i32 @ssl_excert_prepend(%struct.TYPE_5__** %6)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @bio_err, align 4
  %42 = call i32 (...) @opt_getprog()
  %43 = call i32 @BIO_printf(i32 %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %101

44:                                               ; preds = %37, %32
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %46 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %46, align 8
  %47 = call i8* (...) @opt_arg()
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 5
  store i32* %48, i32** %50, align 8
  br label %100

51:                                               ; preds = %29
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @bio_err, align 4
  %58 = call i32 (...) @opt_getprog()
  %59 = call i32 @BIO_printf(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  br label %101

60:                                               ; preds = %51
  %61 = call i8* (...) @opt_arg()
  %62 = bitcast i8* %61 to i32*
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 4
  store i32* %62, i32** %64, align 8
  br label %100

65:                                               ; preds = %29
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @bio_err, align 4
  %72 = call i32 (...) @opt_getprog()
  %73 = call i32 @BIO_printf(i32 %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %101

74:                                               ; preds = %65
  %75 = call i8* (...) @opt_arg()
  %76 = bitcast i8* %75 to i32*
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  store i32* %76, i32** %78, align 8
  br label %100

79:                                               ; preds = %29
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  br label %100

82:                                               ; preds = %29
  %83 = call i8* (...) @opt_arg()
  %84 = load i32, i32* @OPT_FMT_PEMDER, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = call i32 @opt_format(i8* %83, i32 %84, i32* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %107

90:                                               ; preds = %82
  br label %100

91:                                               ; preds = %29
  %92 = call i8* (...) @opt_arg()
  %93 = load i32, i32* @OPT_FMT_PEMDER, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = call i32 @opt_format(i8* %92, i32 %93, i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  br label %107

99:                                               ; preds = %91
  br label %100

100:                                              ; preds = %29, %99, %90, %79, %74, %60, %44
  store i32 1, i32* %3, align 4
  br label %107

101:                                              ; preds = %70, %56, %40, %22
  %102 = load i32, i32* @bio_err, align 4
  %103 = call i32 @ERR_print_errors(i32 %102)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %105 = call i32 @ssl_excert_free(%struct.TYPE_5__* %104)
  %106 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %106, align 8
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %101, %100, %98, %89, %31
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ssl_excert_prepend(%struct.TYPE_5__**) #1

declare dso_local i32 @BIO_printf(i32, i8*, i32) #1

declare dso_local i32 @opt_getprog(...) #1

declare dso_local i8* @opt_arg(...) #1

declare dso_local i32 @opt_format(i8*, i32, i32*) #1

declare dso_local i32 @ERR_print_errors(i32) #1

declare dso_local i32 @ssl_excert_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
