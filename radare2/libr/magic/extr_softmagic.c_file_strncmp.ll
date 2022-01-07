; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_softmagic.c_file_strncmp.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_softmagic.c_file_strncmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRING_IGNORE_LOWERCASE = common dso_local global i64 0, align 8
@STRING_IGNORE_UPPERCASE = common dso_local global i64 0, align 8
@STRING_COMPACT_BLANK = common dso_local global i64 0, align 8
@STRING_COMPACT_OPTIONAL_BLANK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*, i8*, i64, i64)* @file_strncmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @file_strncmp(i8* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %10, align 8
  store i8 0, i8* %11, align 1
  %16 = load i64, i64* %8, align 8
  %17 = icmp eq i64 0, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %35, %18
  %20 = load i64, i64* %7, align 8
  %21 = add i64 %20, -1
  store i64 %21, i64* %7, align 8
  %22 = icmp ugt i64 %20, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load i32*, i32** %10, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %10, align 8
  %26 = load i32, i32* %24, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %9, align 8
  %29 = load i32, i32* %27, align 4
  %30 = sub nsw i32 %26, %29
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %11, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  br label %36

35:                                               ; preds = %23
  br label %19

36:                                               ; preds = %34, %19
  br label %162

37:                                               ; preds = %4
  br label %38

38:                                               ; preds = %160, %37
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, -1
  store i64 %40, i64* %7, align 8
  %41 = icmp ugt i64 %39, 0
  br i1 %41, label %42, label %161

42:                                               ; preds = %38
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @STRING_IGNORE_LOWERCASE, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @islower(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %47
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %10, align 8
  %55 = load i32, i32* %53, align 4
  %56 = call signext i8 @tolower(i32 %55)
  %57 = sext i8 %56 to i32
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %9, align 8
  %60 = load i32, i32* %58, align 4
  %61 = sub nsw i32 %57, %60
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %11, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  br label %161

66:                                               ; preds = %52
  br label %160

67:                                               ; preds = %47, %42
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @STRING_IGNORE_UPPERCASE, align 8
  %70 = and i64 %68, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %67
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @isupper(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %72
  %78 = load i32*, i32** %10, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %10, align 8
  %80 = load i32, i32* %78, align 4
  %81 = call signext i8 @toupper(i32 %80)
  %82 = sext i8 %81 to i32
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %9, align 8
  %85 = load i32, i32* %83, align 4
  %86 = sub nsw i32 %82, %85
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %11, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  br label %161

91:                                               ; preds = %77
  br label %159

92:                                               ; preds = %72, %67
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* @STRING_COMPACT_BLANK, align 8
  %95 = and i64 %93, %94
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %92
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @isspace(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %122

102:                                              ; preds = %97
  %103 = load i32*, i32** %9, align 8
  %104 = getelementptr inbounds i32, i32* %103, i32 1
  store i32* %104, i32** %9, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %10, align 8
  %107 = load i32, i32* %105, align 4
  %108 = call i64 @isspace(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %116, %110
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @isspace(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32*, i32** %10, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %10, align 8
  br label %111

119:                                              ; preds = %111
  br label %121

120:                                              ; preds = %102
  store i8 1, i8* %11, align 1
  br label %161

121:                                              ; preds = %119
  br label %158

122:                                              ; preds = %97, %92
  %123 = load i64, i64* %8, align 8
  %124 = load i64, i64* @STRING_COMPACT_OPTIONAL_BLANK, align 8
  %125 = and i64 %123, %124
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %144

127:                                              ; preds = %122
  %128 = load i32*, i32** %9, align 8
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @isspace(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %144

132:                                              ; preds = %127
  %133 = load i32*, i32** %9, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %9, align 8
  br label %135

135:                                              ; preds = %140, %132
  %136 = load i32*, i32** %10, align 8
  %137 = load i32, i32* %136, align 4
  %138 = call i64 @isspace(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i32*, i32** %10, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %10, align 8
  br label %135

143:                                              ; preds = %135
  br label %157

144:                                              ; preds = %127, %122
  %145 = load i32*, i32** %10, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** %10, align 8
  %147 = load i32, i32* %145, align 4
  %148 = load i32*, i32** %9, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %9, align 8
  %150 = load i32, i32* %148, align 4
  %151 = sub nsw i32 %147, %150
  %152 = trunc i32 %151 to i8
  store i8 %152, i8* %11, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %144
  br label %161

156:                                              ; preds = %144
  br label %157

157:                                              ; preds = %156, %143
  br label %158

158:                                              ; preds = %157, %121
  br label %159

159:                                              ; preds = %158, %91
  br label %160

160:                                              ; preds = %159, %66
  br label %38

161:                                              ; preds = %155, %120, %90, %65, %38
  br label %162

162:                                              ; preds = %161, %36
  %163 = load i8, i8* %11, align 1
  ret i8 %163
}

declare dso_local i64 @islower(i32) #1

declare dso_local signext i8 @tolower(i32) #1

declare dso_local i64 @isupper(i32) #1

declare dso_local signext i8 @toupper(i32) #1

declare dso_local i64 @isspace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
