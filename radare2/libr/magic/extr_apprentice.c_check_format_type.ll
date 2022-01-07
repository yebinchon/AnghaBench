; ModuleID = '/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_check_format_type.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/magic/extr_apprentice.c_check_format_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @check_format_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_format_type(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %202

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %200 [
    i32 129, label %14
    i32 130, label %15
    i32 131, label %105
    i32 132, label %105
    i32 128, label %156
  ]

14:                                               ; preds = %12
  store i32 1, i32* %6, align 4
  br label %15

15:                                               ; preds = %12, %14
  %16 = load i8*, i8** %4, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 45
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  br label %23

23:                                               ; preds = %20, %15
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 46
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %4, align 8
  br label %31

31:                                               ; preds = %28, %23
  br label %32

32:                                               ; preds = %38, %31
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = call i32 @isdigit(i32 %35) #3
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %4, align 8
  br label %32

41:                                               ; preds = %32
  %42 = load i8*, i8** %4, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 46
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %4, align 8
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %56, %49
  %51 = load i8*, i8** %4, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = call i32 @isdigit(i32 %53) #3
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %4, align 8
  br label %50

59:                                               ; preds = %50
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %4, align 8
  %65 = load i8, i8* %63, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 108
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 -1, i32* %3, align 4
  br label %202

69:                                               ; preds = %62
  %70 = load i8*, i8** %4, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %4, align 8
  %72 = load i8, i8* %70, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 108
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 -1, i32* %3, align 4
  br label %202

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %59
  %78 = load i8*, i8** %4, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %4, align 8
  %80 = load i8, i8* %78, align 1
  %81 = sext i8 %80 to i32
  switch i32 %81, label %104 [
    i32 108, label %82
    i32 104, label %89
    i32 105, label %103
    i32 99, label %103
    i32 100, label %103
    i32 117, label %103
    i32 120, label %103
    i32 88, label %103
  ]

82:                                               ; preds = %77
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %4, align 8
  %85 = load i8, i8* %83, align 1
  %86 = sext i8 %85 to i32
  switch i32 %86, label %88 [
    i32 105, label %87
    i32 100, label %87
    i32 117, label %87
    i32 120, label %87
    i32 88, label %87
  ]

87:                                               ; preds = %82, %82, %82, %82, %82
  store i32 0, i32* %3, align 4
  br label %202

88:                                               ; preds = %82
  store i32 -1, i32* %3, align 4
  br label %202

89:                                               ; preds = %77
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %4, align 8
  %92 = load i8, i8* %90, align 1
  %93 = sext i8 %92 to i32
  switch i32 %93, label %102 [
    i32 104, label %94
    i32 100, label %101
  ]

94:                                               ; preds = %89
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %4, align 8
  %97 = load i8, i8* %95, align 1
  %98 = sext i8 %97 to i32
  switch i32 %98, label %100 [
    i32 105, label %99
    i32 100, label %99
    i32 117, label %99
    i32 120, label %99
    i32 88, label %99
  ]

99:                                               ; preds = %94, %94, %94, %94, %94
  store i32 0, i32* %3, align 4
  br label %202

100:                                              ; preds = %94
  store i32 -1, i32* %3, align 4
  br label %202

101:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %202

102:                                              ; preds = %89
  store i32 -1, i32* %3, align 4
  br label %202

103:                                              ; preds = %77, %77, %77, %77, %77, %77
  store i32 0, i32* %3, align 4
  br label %202

104:                                              ; preds = %77
  store i32 -1, i32* %3, align 4
  br label %202

105:                                              ; preds = %12, %12
  %106 = load i8*, i8** %4, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 45
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i8*, i8** %4, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %4, align 8
  br label %113

113:                                              ; preds = %110, %105
  %114 = load i8*, i8** %4, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 46
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i8*, i8** %4, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %4, align 8
  br label %121

121:                                              ; preds = %118, %113
  br label %122

122:                                              ; preds = %128, %121
  %123 = load i8*, i8** %4, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = call i32 @isdigit(i32 %125) #3
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i8*, i8** %4, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %4, align 8
  br label %122

131:                                              ; preds = %122
  %132 = load i8*, i8** %4, align 8
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 46
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i8*, i8** %4, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %4, align 8
  br label %139

139:                                              ; preds = %136, %131
  br label %140

140:                                              ; preds = %146, %139
  %141 = load i8*, i8** %4, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = call i32 @isdigit(i32 %143) #3
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i8*, i8** %4, align 8
  %148 = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %148, i8** %4, align 8
  br label %140

149:                                              ; preds = %140
  %150 = load i8*, i8** %4, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %4, align 8
  %152 = load i8, i8* %150, align 1
  %153 = sext i8 %152 to i32
  switch i32 %153, label %155 [
    i32 101, label %154
    i32 69, label %154
    i32 102, label %154
    i32 70, label %154
    i32 103, label %154
    i32 71, label %154
  ]

154:                                              ; preds = %149, %149, %149, %149, %149, %149
  store i32 0, i32* %3, align 4
  br label %202

155:                                              ; preds = %149
  store i32 -1, i32* %3, align 4
  br label %202

156:                                              ; preds = %12
  %157 = load i8*, i8** %4, align 8
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 45
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load i8*, i8** %4, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %4, align 8
  br label %164

164:                                              ; preds = %161, %156
  br label %165

165:                                              ; preds = %171, %164
  %166 = load i8*, i8** %4, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = call i32 @isdigit(i32 %168) #3
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = load i8*, i8** %4, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %4, align 8
  br label %165

174:                                              ; preds = %165
  %175 = load i8*, i8** %4, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 46
  br i1 %178, label %179, label %192

179:                                              ; preds = %174
  %180 = load i8*, i8** %4, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %4, align 8
  br label %182

182:                                              ; preds = %188, %179
  %183 = load i8*, i8** %4, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = call i32 @isdigit(i32 %185) #3
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %182
  %189 = load i8*, i8** %4, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %4, align 8
  br label %182

191:                                              ; preds = %182
  br label %192

192:                                              ; preds = %191, %174
  %193 = load i8*, i8** %4, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %4, align 8
  %195 = load i8, i8* %193, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 115
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  store i32 0, i32* %3, align 4
  br label %202

199:                                              ; preds = %192
  store i32 -1, i32* %3, align 4
  br label %202

200:                                              ; preds = %12
  %201 = call i32 (...) @abort() #4
  unreachable

202:                                              ; preds = %199, %198, %155, %154, %104, %103, %102, %101, %100, %99, %88, %87, %75, %68, %11
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
