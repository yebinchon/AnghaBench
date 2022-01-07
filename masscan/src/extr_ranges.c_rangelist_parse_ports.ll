; ModuleID = '/home/carl/AnghaBench/masscan/src/extr_ranges.c_rangelist_parse_ports.c'
source_filename = "/home/carl/AnghaBench/masscan/src/extr_ranges.c_rangelist_parse_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RangeList = type { i32 }

@Templ_UDP = common dso_local global i32 0, align 4
@Templ_SCTP = common dso_local global i32 0, align 4
@Templ_Oproto_first = common dso_local global i32 0, align 4
@Templ_ICMP_echo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"bad port charactern = %c\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"bad ports: %u-%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rangelist_parse_ports(%struct.RangeList* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.RangeList*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.RangeList* %0, %struct.RangeList** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i32*, i32** %8, align 8
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %160, %4
  %16 = load i8*, i8** %10, align 8
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %19, label %161

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %35, %19
  %21 = load i8*, i8** %10, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load i8*, i8** %10, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = and i32 %28, 255
  %30 = trunc i32 %29 to i8
  %31 = call i64 @isspace(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %25, %20
  %34 = phi i1 [ false, %20 ], [ %32, %25 ]
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %10, align 8
  br label %20

38:                                               ; preds = %33
  %39 = load i8*, i8** %10, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %38
  %44 = load i8*, i8** %10, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 35
  br i1 %47, label %48, label %49

48:                                               ; preds = %43, %38
  br label %161

49:                                               ; preds = %43
  %50 = load i8*, i8** %10, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = and i32 %52, 255
  %54 = trunc i32 %53 to i8
  %55 = call i64 @isalpha(i8 signext %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %49
  %58 = load i8*, i8** %10, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 58
  br i1 %62, label %63, label %87

63:                                               ; preds = %57
  %64 = load i8*, i8** %10, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  switch i32 %66, label %76 [
    i32 84, label %67
    i32 116, label %67
    i32 85, label %68
    i32 117, label %68
    i32 83, label %70
    i32 115, label %70
    i32 79, label %72
    i32 111, label %72
    i32 73, label %74
    i32 105, label %74
  ]

67:                                               ; preds = %63, %63
  store i32 0, i32* %9, align 4
  br label %84

68:                                               ; preds = %63, %63
  %69 = load i32, i32* @Templ_UDP, align 4
  store i32 %69, i32* %9, align 4
  br label %84

70:                                               ; preds = %63, %63
  %71 = load i32, i32* @Templ_SCTP, align 4
  store i32 %71, i32* %9, align 4
  br label %84

72:                                               ; preds = %63, %63
  %73 = load i32, i32* @Templ_Oproto_first, align 4
  store i32 %73, i32* %9, align 4
  br label %84

74:                                               ; preds = %63, %63
  %75 = load i32, i32* @Templ_ICMP_echo, align 4
  store i32 %75, i32* %9, align 4
  br label %84

76:                                               ; preds = %63
  %77 = load i8*, i8** %10, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = call i32 (i32, i8*, i32, ...) @LOG(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %80)
  %82 = load i32*, i32** %8, align 8
  store i32 1, i32* %82, align 4
  %83 = load i8*, i8** %10, align 8
  store i8* %83, i8** %5, align 8
  br label %163

84:                                               ; preds = %74, %72, %70, %68, %67
  %85 = load i8*, i8** %10, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 2
  store i8* %86, i8** %10, align 8
  br label %87

87:                                               ; preds = %84, %57, %49
  %88 = load i8*, i8** %10, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = and i32 %91, 255
  %93 = trunc i32 %92 to i8
  %94 = call i32 @isdigit(i8 signext %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %87
  br label %161

97:                                               ; preds = %87
  %98 = load i8*, i8** %10, align 8
  %99 = call i64 @strtoul(i8* %98, i8** %10, i32 0)
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %12, align 4
  %102 = load i8*, i8** %10, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 45
  br i1 %105, label %106, label %112

106:                                              ; preds = %97
  %107 = load i8*, i8** %10, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %10, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = call i64 @strtoul(i8* %109, i8** %10, i32 0)
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %106, %97
  %113 = load i32, i32* %11, align 4
  %114 = icmp ugt i32 %113, 255
  br i1 %114, label %115, label %125

115:                                              ; preds = %112
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @Templ_Oproto_first, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i32 (i32, i8*, i32, ...) @LOG(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load i32*, i32** %8, align 8
  store i32 2, i32* %123, align 4
  %124 = load i8*, i8** %10, align 8
  store i8* %124, i8** %5, align 8
  br label %163

125:                                              ; preds = %115, %112
  %126 = load i32, i32* %11, align 4
  %127 = icmp ugt i32 %126, 65535
  br i1 %127, label %135, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %12, align 4
  %130 = icmp ugt i32 %129, 65535
  br i1 %130, label %135, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp ult i32 %132, %133
  br i1 %134, label %135, label %141

135:                                              ; preds = %131, %128, %125
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %12, align 4
  %138 = call i32 (i32, i8*, i32, ...) @LOG(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %136, i32 %137)
  %139 = load i32*, i32** %8, align 8
  store i32 2, i32* %139, align 4
  %140 = load i8*, i8** %10, align 8
  store i8* %140, i8** %5, align 8
  br label %163

141:                                              ; preds = %131
  %142 = load %struct.RangeList*, %struct.RangeList** %6, align 8
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* %9, align 4
  %145 = add i32 %143, %144
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* %9, align 4
  %148 = add i32 %146, %147
  %149 = call i32 @rangelist_add_range(%struct.RangeList* %142, i32 %145, i32 %148)
  br label %150

150:                                              ; preds = %141
  br label %151

151:                                              ; preds = %150
  %152 = load i8*, i8** %10, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 44
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i8*, i8** %10, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %10, align 8
  br label %160

159:                                              ; preds = %151
  br label %161

160:                                              ; preds = %156
  br label %15

161:                                              ; preds = %159, %96, %48, %15
  %162 = load i8*, i8** %10, align 8
  store i8* %162, i8** %5, align 8
  br label %163

163:                                              ; preds = %161, %135, %119, %76
  %164 = load i8*, i8** %5, align 8
  ret i8* %164
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i32 @LOG(i32, i8*, i32, ...) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @rangelist_add_range(%struct.RangeList*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
