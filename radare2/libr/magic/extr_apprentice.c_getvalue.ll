; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_getvalue.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_getvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.r_magic = type { i32, i32, i8, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { float, i32, i64, i32 }

@R_MAGIC_CHECK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cannot get string from `%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.r_magic*, i8**, i32)* @getvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getvalue(%struct.TYPE_8__* %0, %struct.r_magic* %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.r_magic*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.r_magic* %1, %struct.r_magic** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.r_magic*, %struct.r_magic** %7, align 8
  %15 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %93 [
    i32 137, label %17
    i32 132, label %17
    i32 128, label %17
    i32 131, label %17
    i32 130, label %17
    i32 129, label %17
    i32 135, label %60
    i32 138, label %60
    i32 133, label %60
    i32 136, label %77
    i32 139, label %77
    i32 134, label %77
  ]

17:                                               ; preds = %4, %4, %4, %4, %4, %4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = load i8**, i8*** %8, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.r_magic*, %struct.r_magic** %7, align 8
  %22 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i8* @getstr(%struct.TYPE_8__* %18, i8* %20, i32 %24, i32 4, i32* %10, i32 %25)
  %27 = load i8**, i8*** %8, align 8
  store i8* %26, i8** %27, align 8
  %28 = load i8**, i8*** %8, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %46, label %31

31:                                               ; preds = %17
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @R_MAGIC_CHECK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = load %struct.r_magic*, %struct.r_magic** %7, align 8
  %41 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @file_magwarn(%struct.TYPE_8__* %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %38, %31
  store i32 -1, i32* %5, align 4
  br label %114

46:                                               ; preds = %17
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.r_magic*, %struct.r_magic** %7, align 8
  %49 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.r_magic*, %struct.r_magic** %7, align 8
  %51 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 131
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.r_magic*, %struct.r_magic** %7, align 8
  %56 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %54, %46
  store i32 0, i32* %5, align 4
  br label %114

60:                                               ; preds = %4, %4, %4
  %61 = load %struct.r_magic*, %struct.r_magic** %7, align 8
  %62 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %61, i32 0, i32 2
  %63 = load i8, i8* %62, align 8
  %64 = sext i8 %63 to i32
  %65 = icmp ne i32 %64, 120
  br i1 %65, label %66, label %76

66:                                               ; preds = %60
  %67 = load i8**, i8*** %8, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @strtod(i8* %68, i8** %11)
  %70 = sitofp i64 %69 to float
  %71 = load %struct.r_magic*, %struct.r_magic** %7, align 8
  %72 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store float %70, float* %73, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = load i8**, i8*** %8, align 8
  store i8* %74, i8** %75, align 8
  br label %76

76:                                               ; preds = %66, %60
  store i32 0, i32* %5, align 4
  br label %114

77:                                               ; preds = %4, %4, %4
  %78 = load %struct.r_magic*, %struct.r_magic** %7, align 8
  %79 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %78, i32 0, i32 2
  %80 = load i8, i8* %79, align 8
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 120
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load i8**, i8*** %8, align 8
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @strtod(i8* %85, i8** %12)
  %87 = load %struct.r_magic*, %struct.r_magic** %7, align 8
  %88 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  store i64 %86, i64* %89, align 8
  %90 = load i8*, i8** %12, align 8
  %91 = load i8**, i8*** %8, align 8
  store i8* %90, i8** %91, align 8
  br label %92

92:                                               ; preds = %83, %77
  store i32 0, i32* %5, align 4
  br label %114

93:                                               ; preds = %4
  %94 = load %struct.r_magic*, %struct.r_magic** %7, align 8
  %95 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %94, i32 0, i32 2
  %96 = load i8, i8* %95, align 8
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 120
  br i1 %98, label %99, label %113

99:                                               ; preds = %93
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %101 = load %struct.r_magic*, %struct.r_magic** %7, align 8
  %102 = load i8**, i8*** %8, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @strtoull(i8* %103, i8** %13, i32 0)
  %105 = call i32 @file_signextend(%struct.TYPE_8__* %100, %struct.r_magic* %101, i32 %104)
  %106 = load %struct.r_magic*, %struct.r_magic** %7, align 8
  %107 = getelementptr inbounds %struct.r_magic, %struct.r_magic* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  %109 = load i8*, i8** %13, align 8
  %110 = load i8**, i8*** %8, align 8
  store i8* %109, i8** %110, align 8
  %111 = load i8**, i8*** %8, align 8
  %112 = call i32 @eatsize(i8** %111)
  br label %113

113:                                              ; preds = %99, %93
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %113, %92, %76, %59, %45
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i8* @getstr(%struct.TYPE_8__*, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @file_magwarn(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i64 @strtod(i8*, i8**) #1

declare dso_local i32 @file_signextend(%struct.TYPE_8__*, %struct.r_magic*, i32) #1

declare dso_local i32 @strtoull(i8*, i8**, i32) #1

declare dso_local i32 @eatsize(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
