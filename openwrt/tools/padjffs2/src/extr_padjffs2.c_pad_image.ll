; ModuleID = '/home/carl/AnghaBench/openwrt/tools/padjffs2/src/extr_padjffs2.c_pad_image.c'
source_filename = "/home/carl/AnghaBench/openwrt/tools/padjffs2/src/extr_padjffs2.c_pad_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"No memory for buffer\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Unable to open %s\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@pad_to_stdout = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@xtra_offset = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"padding image to %08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Unable to write to %s\00", align 1
@pad = common dso_local global i8* null, align 8
@pad_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @pad_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pad_image(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %10, align 4
  %15 = load i32, i32* @BUF_SIZE, align 4
  %16 = call i8* @malloc(i32 %15)
  store i8* %16, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %155

21:                                               ; preds = %2
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* @O_RDWR, align 4
  %24 = call i32 @open(i8* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @ERRS(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %152

30:                                               ; preds = %21
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @SEEK_END, align 4
  %33 = call i32 @lseek(i32 %31, i32 0, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %149

37:                                               ; preds = %30
  %38 = load i32, i32* @pad_to_stdout, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %7, align 4
  br label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @STDOUT_FILENO, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* @BUF_SIZE, align 4
  %47 = call i32 @memset(i8* %45, float -1.000000e+00, i32 %46)
  %48 = load i32, i32* @xtra_offset, align 4
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %144, %44
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %148

55:                                               ; preds = %52
  store i32 10, i32* %13, align 4
  br label %56

56:                                               ; preds = %70, %55
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 32
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load i32, i32* %13, align 4
  %61 = zext i32 %60 to i64
  %62 = shl i64 1, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %73

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  br label %56

73:                                               ; preds = %68, %56
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @ALIGN(i32 %74, i32 %75)
  store i32 %76, i32* %8, align 4
  store i32 10, i32* %13, align 4
  br label %77

77:                                               ; preds = %96, %73
  %78 = load i32, i32* %13, align 4
  %79 = icmp slt i32 %78, 32
  br i1 %79, label %80, label %99

80:                                               ; preds = %77
  %81 = load i32, i32* %13, align 4
  %82 = zext i32 %81 to i64
  %83 = shl i64 1, %82
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 %86, 1
  %88 = and i32 %85, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %80
  %91 = load i32, i32* %11, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %4, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %90, %80
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  br label %77

99:                                               ; preds = %77
  %100 = load i32, i32* @stderr, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* @xtra_offset, align 4
  %103 = sub i32 %101, %102
  %104 = call i32 @fprintf(i32 %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %129, %99
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %133

109:                                              ; preds = %105
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = sub nsw i32 %110, %111
  store i32 %112, i32* %14, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* @BUF_SIZE, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i32, i32* @BUF_SIZE, align 4
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %116, %109
  %119 = load i32, i32* %7, align 4
  %120 = load i8*, i8** %5, align 8
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @write(i32 %119, i8* %120, i32 %121)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %118
  %127 = load i8*, i8** %3, align 8
  %128 = call i32 @ERRS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %127)
  br label %149

129:                                              ; preds = %118
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %9, align 4
  br label %105

133:                                              ; preds = %105
  %134 = load i32, i32* %7, align 4
  %135 = load i8*, i8** @pad, align 8
  %136 = load i32, i32* @pad_len, align 4
  %137 = call i32 @write(i32 %134, i8* %135, i32 %136)
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* @pad_len, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %133
  %142 = load i8*, i8** %3, align 8
  %143 = call i32 @ERRS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %142)
  br label %149

144:                                              ; preds = %133
  %145 = load i32, i32* @pad_len, align 4
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %9, align 4
  br label %52

148:                                              ; preds = %52
  store i32 0, i32* %10, align 4
  br label %149

149:                                              ; preds = %148, %141, %126, %36
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @close(i32 %150)
  br label %152

152:                                              ; preds = %149, %27
  %153 = load i8*, i8** %5, align 8
  %154 = call i32 @free(i8* %153)
  br label %155

155:                                              ; preds = %152, %19
  %156 = load i32, i32* %10, align 4
  ret i32 %156
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @ERRS(i8*, i8*) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @memset(i8*, float, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
