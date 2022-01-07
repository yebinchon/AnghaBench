; ModuleID = '/home/carl/AnghaBench/radare2/libr/core/extr_cmd_zign.c_addBytesZign.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/core/extr_cmd_zign.c_addBytesZign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"error: invalid syntax\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error: cannot parse hexpairs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i8*, i32, i8*, i32)* @addBytesZign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addBytesZign(%struct.TYPE_3__* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = call i32 @eprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %118

22:                                               ; preds = %5
  %23 = load i8*, i8** %9, align 8
  %24 = call i8* @r_str_word_get0(i8* %23, i32 0)
  store i8* %24, i8** %11, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = call i64 @strchr(i8* %25, i8 signext 58)
  %27 = inttoptr i64 %26 to i8*
  store i8* %27, i8** %14, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %81

29:                                               ; preds = %22
  %30 = load i8*, i8** %14, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %29
  %39 = load i32, i32* %16, align 4
  %40 = and i32 %39, 1
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = load i8*, i8** %14, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %14, align 8
  %45 = call i32 @strlen(i8* %44)
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %42, %38, %29
  %49 = call i32 @eprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %118

50:                                               ; preds = %42
  %51 = load i32, i32* %16, align 4
  %52 = add nsw i32 %51, 1
  %53 = call i8* @calloc(i32 1, i32 %52)
  store i8* %53, i8** %13, align 8
  %54 = load i32, i32* %16, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i8* @calloc(i32 1, i32 %55)
  store i8* %56, i8** %12, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = load i8*, i8** %11, align 8
  %59 = load i32, i32* %16, align 4
  %60 = call i32 @memcpy(i8* %57, i8* %58, i32 %59)
  %61 = load i8*, i8** %12, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @memcpy(i8* %61, i8* %62, i32 %63)
  %65 = load i8*, i8** %13, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 @r_hex_str2bin(i8* %65, i8* %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %16, align 4
  %70 = sdiv i32 %69, 2
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %50
  %73 = load i8*, i8** %12, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 @r_hex_str2bin(i8* %73, i8* %74)
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %72, %50
  %79 = call i32 @eprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %118

80:                                               ; preds = %72
  br label %98

81:                                               ; preds = %22
  %82 = load i8*, i8** %11, align 8
  %83 = call i32 @strlen(i8* %82)
  %84 = add nsw i32 %83, 4
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = call i8* @malloc(i32 %85)
  store i8* %86, i8** %13, align 8
  %87 = load i32, i32* %16, align 4
  %88 = call i8* @malloc(i32 %87)
  store i8* %88, i8** %12, align 8
  %89 = load i8*, i8** %11, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = call i32 @r_hex_str2binmask(i8* %89, i8* %90, i8* %91)
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp sle i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %81
  %96 = call i32 @eprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %118

97:                                               ; preds = %81
  br label %98

98:                                               ; preds = %97, %80
  %99 = load i32, i32* %8, align 4
  switch i32 %99, label %117 [
    i32 128, label %100
    i32 129, label %109
  ]

100:                                              ; preds = %98
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i8*, i8** %7, align 8
  %105 = load i32, i32* %15, align 4
  %106 = load i8*, i8** %13, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = call i32 @r_sign_add_bytes(i32 %103, i8* %104, i32 %105, i8* %106, i8* %107)
  store i32 %108, i32* %17, align 4
  br label %117

109:                                              ; preds = %98
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i8*, i8** %7, align 8
  %114 = load i32, i32* %15, align 4
  %115 = load i8*, i8** %13, align 8
  %116 = call i32 @r_sign_add_anal(i32 %112, i8* %113, i32 %114, i8* %115, i32 0)
  store i32 %116, i32* %17, align 4
  br label %117

117:                                              ; preds = %98, %109, %100
  br label %118

118:                                              ; preds = %117, %95, %78, %48, %20
  %119 = load i8*, i8** %13, align 8
  %120 = call i32 @free(i8* %119)
  %121 = load i8*, i8** %12, align 8
  %122 = call i32 @free(i8* %121)
  %123 = load i32, i32* %17, align 4
  ret i32 %123
}

declare dso_local i32 @eprintf(i8*) #1

declare dso_local i8* @r_str_word_get0(i8*, i32) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @r_hex_str2bin(i8*, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @r_hex_str2binmask(i8*, i8*, i8*) #1

declare dso_local i32 @r_sign_add_bytes(i32, i8*, i32, i8*, i8*) #1

declare dso_local i32 @r_sign_add_anal(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
