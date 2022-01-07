; ModuleID = '/home/carl/AnghaBench/openwrt/scripts/config/extr_confdata.c_conf_set_sym_val.c'
source_filename = "/home/carl/AnghaBench/openwrt/scripts/config/extr_confdata.c_conf_set_sym_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.symbol = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@mod = common dso_local global i32 0, align 4
@yes = common dso_local global i32 0, align 4
@no = common dso_local global i32 0, align 4
@S_DEF_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"symbol value '%s' invalid for %s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\22\\\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid string found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.symbol*, i32, i32, i8*)* @conf_set_sym_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @conf_set_sym_val(%struct.symbol* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.symbol* %0, %struct.symbol** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.symbol*, %struct.symbol** %6, align 8
  %12 = getelementptr inbounds %struct.symbol, %struct.symbol* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %188 [
    i32 128, label %14
    i32 133, label %35
    i32 130, label %86
    i32 129, label %114
    i32 131, label %155
    i32 132, label %155
  ]

14:                                               ; preds = %4
  %15 = load i8*, i8** %9, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 109
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load i32, i32* @mod, align 4
  %22 = load %struct.symbol*, %struct.symbol** %6, align 8
  %23 = getelementptr inbounds %struct.symbol, %struct.symbol* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %21, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.symbol*, %struct.symbol** %6, align 8
  %31 = getelementptr inbounds %struct.symbol, %struct.symbol* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %189

34:                                               ; preds = %14
  br label %35

35:                                               ; preds = %4, %34
  %36 = load i8*, i8** %9, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 121
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load i32, i32* @yes, align 4
  %43 = load %struct.symbol*, %struct.symbol** %6, align 8
  %44 = getelementptr inbounds %struct.symbol, %struct.symbol* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  store i32 %42, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.symbol*, %struct.symbol** %6, align 8
  %52 = getelementptr inbounds %struct.symbol, %struct.symbol* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %189

55:                                               ; preds = %35
  %56 = load i8*, i8** %9, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 110
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = load i32, i32* @no, align 4
  %63 = load %struct.symbol*, %struct.symbol** %6, align 8
  %64 = getelementptr inbounds %struct.symbol, %struct.symbol* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %62, i32* %69, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.symbol*, %struct.symbol** %6, align 8
  %72 = getelementptr inbounds %struct.symbol, %struct.symbol* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %189

75:                                               ; preds = %55
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @S_DEF_AUTO, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load i8*, i8** %9, align 8
  %81 = load %struct.symbol*, %struct.symbol** %6, align 8
  %82 = getelementptr inbounds %struct.symbol, %struct.symbol* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 (i8*, ...) @conf_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %80, i32 %83)
  br label %85

85:                                               ; preds = %79, %75
  store i32 1, i32* %5, align 4
  br label %190

86:                                               ; preds = %4
  %87 = load i8*, i8** %9, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 34
  br i1 %90, label %91, label %113

91:                                               ; preds = %86
  %92 = load i8*, i8** %9, align 8
  store i8* %92, i8** %10, align 8
  br label %93

93:                                               ; preds = %107, %91
  %94 = load i8*, i8** %10, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = load i8*, i8** %10, align 8
  %100 = load i8, i8* %99, align 1
  %101 = call i32 @isspace(i8 signext %100)
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  br label %104

104:                                              ; preds = %98, %93
  %105 = phi i1 [ false, %93 ], [ %103, %98 ]
  br i1 %105, label %106, label %110

106:                                              ; preds = %104
  br label %107

107:                                              ; preds = %106
  %108 = load i8*, i8** %10, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %10, align 8
  br label %93

110:                                              ; preds = %104
  %111 = load %struct.symbol*, %struct.symbol** %6, align 8
  %112 = getelementptr inbounds %struct.symbol, %struct.symbol* %111, i32 0, i32 0
  store i32 129, i32* %112, align 8
  br label %156

113:                                              ; preds = %86
  br label %114

114:                                              ; preds = %4, %113
  %115 = load i8*, i8** %9, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %9, align 8
  %117 = load i8, i8* %115, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 34
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %189

121:                                              ; preds = %114
  %122 = load i8*, i8** %9, align 8
  store i8* %122, i8** %10, align 8
  br label %123

123:                                              ; preds = %141, %121
  %124 = load i8*, i8** %10, align 8
  %125 = call i8* @strpbrk(i8* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %125, i8** %10, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %144

127:                                              ; preds = %123
  %128 = load i8*, i8** %10, align 8
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 34
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  %133 = load i8*, i8** %10, align 8
  store i8 0, i8* %133, align 1
  br label %144

134:                                              ; preds = %127
  %135 = load i8*, i8** %10, align 8
  %136 = load i8*, i8** %10, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = load i8*, i8** %10, align 8
  %139 = call i32 @strlen(i8* %138)
  %140 = call i32 @memmove(i8* %135, i8* %137, i32 %139)
  br label %141

141:                                              ; preds = %134
  %142 = load i8*, i8** %10, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %10, align 8
  br label %123

144:                                              ; preds = %132, %123
  %145 = load i8*, i8** %10, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %154, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @S_DEF_AUTO, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = call i32 (i8*, ...) @conf_warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %147
  store i32 1, i32* %5, align 4
  br label %190

154:                                              ; preds = %144
  br label %155

155:                                              ; preds = %4, %4, %154
  br label %156

156:                                              ; preds = %155, %110
  %157 = load %struct.symbol*, %struct.symbol** %6, align 8
  %158 = load i8*, i8** %9, align 8
  %159 = call i32 @sym_string_valid(%struct.symbol* %157, i8* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %176

161:                                              ; preds = %156
  %162 = load i8*, i8** %9, align 8
  %163 = call i32 @strdup(i8* %162)
  %164 = load %struct.symbol*, %struct.symbol** %6, align 8
  %165 = getelementptr inbounds %struct.symbol, %struct.symbol* %164, i32 0, i32 3
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  store i32 %163, i32* %170, align 4
  %171 = load i32, i32* %8, align 4
  %172 = load %struct.symbol*, %struct.symbol** %6, align 8
  %173 = getelementptr inbounds %struct.symbol, %struct.symbol* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 4
  br label %187

176:                                              ; preds = %156
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* @S_DEF_AUTO, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %176
  %181 = load i8*, i8** %9, align 8
  %182 = load %struct.symbol*, %struct.symbol** %6, align 8
  %183 = getelementptr inbounds %struct.symbol, %struct.symbol* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (i8*, ...) @conf_warning(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* %181, i32 %184)
  br label %186

186:                                              ; preds = %180, %176
  store i32 1, i32* %5, align 4
  br label %190

187:                                              ; preds = %161
  br label %189

188:                                              ; preds = %4
  br label %189

189:                                              ; preds = %188, %187, %120, %61, %41, %20
  store i32 0, i32* %5, align 4
  br label %190

190:                                              ; preds = %189, %186, %153, %85
  %191 = load i32, i32* %5, align 4
  ret i32 %191
}

declare dso_local i32 @conf_warning(i8*, ...) #1

declare dso_local i32 @isspace(i8 signext) #1

declare dso_local i8* @strpbrk(i8*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sym_string_valid(%struct.symbol*, i8*) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
