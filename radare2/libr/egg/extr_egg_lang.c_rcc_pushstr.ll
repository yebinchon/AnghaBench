; ModuleID = '/home/carl/AnghaBench/radare2/libr/egg/extr_egg_lang.c_rcc_pushstr.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/egg/extr_egg_lang.c_rcc_pushstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 (%struct.TYPE_9__*, i32, i8*, i32)*, i32 (%struct.TYPE_9__*, i8*, i8*, i8*, i32)* }

@.str = private unnamed_addr constant [27 x i8] c"encode %s string (%s) (%s)\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"filtered\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"unfiltered\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"%s:%d Error string format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i8*, i32)* @rcc_pushstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcc_pushstr(%struct.TYPE_9__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %12, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i32 (%struct.TYPE_9__*, i8*, i8*, i8*, i32)*, i32 (%struct.TYPE_9__*, i8*, i8*, i8*, i32)** %17, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 %18(%struct.TYPE_9__* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %24, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %132

32:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %128, %32
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %40, label %131

40:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 92
  br i1 %47, label %48, label %127

48:                                               ; preds = %40
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  switch i32 %55, label %97 [
    i32 116, label %56
    i32 110, label %61
    i32 101, label %66
    i32 120, label %71
  ]

56:                                               ; preds = %48
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  store i8 9, i8* %60, align 1
  store i32 1, i32* %7, align 4
  br label %98

61:                                               ; preds = %48
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8 10, i8* %65, align 1
  store i32 1, i32* %7, align 4
  br label %98

66:                                               ; preds = %48
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  store i8 27, i8* %70, align 1
  store i32 1, i32* %7, align 4
  br label %98

71:                                               ; preds = %48
  %72 = load i8*, i8** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = getelementptr inbounds i8, i8* %75, i64 2
  %77 = call i32 @r_hex_pair2bin(i8* %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %90

80:                                               ; preds = %71
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @eprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %84, i32 %88)
  br label %90

90:                                               ; preds = %80, %71
  %91 = load i32, i32* %11, align 4
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %5, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  store i8 %92, i8* %96, align 1
  store i32 3, i32* %7, align 4
  br label %98

97:                                               ; preds = %48
  br label %98

98:                                               ; preds = %97, %90, %66, %61, %56
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %126

101:                                              ; preds = %98
  %102 = load i8*, i8** %5, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  %107 = load i8*, i8** %5, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = getelementptr inbounds i8, i8* %113, i64 1
  %115 = load i8*, i8** %5, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = getelementptr inbounds i8, i8* %121, i64 1
  %123 = call i32 @strlen(i8* %122)
  %124 = add nsw i32 %123, 1
  %125 = call i32 @memmove(i8* %106, i8* %114, i32 %124)
  br label %126

126:                                              ; preds = %101, %98
  br label %127

127:                                              ; preds = %126, %40
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %33

131:                                              ; preds = %33
  br label %132

132:                                              ; preds = %131, %3
  %133 = load i8*, i8** %5, align 8
  %134 = call i32 @strlen(i8* %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = srem i32 %136, %139
  %141 = sub nsw i32 %135, %140
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %141, %144
  store i32 %145, i32* %9, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = load i32 (%struct.TYPE_9__*, i32, i8*, i32)*, i32 (%struct.TYPE_9__*, i32, i8*, i32)** %147, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i8*, i8** %5, align 8
  %155 = load i32, i32* %9, align 4
  %156 = call i32 %148(%struct.TYPE_9__* %149, i32 %153, i8* %154, i32 %155)
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @R_FREE(i32 %160)
  ret void
}

declare dso_local i32 @r_hex_pair2bin(i8*) #1

declare dso_local i32 @eprintf(i8*, i32, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @R_FREE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
