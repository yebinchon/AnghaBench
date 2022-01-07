; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_pipe.c_pipe_read.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/modules/extr_pipe.c_pipe_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8* }

@AT_HEAD = common dso_local global i32 0, align 4
@CHAR_DELIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pipe_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_read(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* @AT_HEAD, align 4
  %14 = call %struct.TYPE_4__* @checkPipeTable(i32* %12, i32 1, i32 %13)
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %3, align 8
  store i32 0, i32* %5, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @lua_settop(i32* %15, i32 2)
  %17 = load i32*, i32** %2, align 8
  %18 = call signext i8 @getsize_delim(i32* %17, i32 2, i32* %6)
  store i8 %18, i8* %7, align 1
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @lua_pop(i32* %19, i32 1)
  br label %21

21:                                               ; preds = %165, %1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i1 [ false, %21 ], [ %26, %24 ]
  br i1 %28, label %29, label %166

29:                                               ; preds = %27
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %32, %35
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %90

39:                                               ; preds = %29
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %64, %39
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %43
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = load i8, i8* %7, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %57, %59
  br label %61

61:                                               ; preds = %49, %43
  %62 = phi i1 [ false, %43 ], [ %60, %49 ]
  br i1 %62, label %63, label %67

63:                                               ; preds = %61
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %43

67:                                               ; preds = %61
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %68, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %10, align 4
  store i32 %74, i32* %9, align 4
  store i32 %74, i32* %8, align 4
  br label %89

75:                                               ; preds = %67
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sub nsw i32 %77, %80
  store i32 %81, i32* %9, align 4
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @CHAR_DELIM, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %75
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %85, %75
  br label %89

89:                                               ; preds = %88, %73
  br label %103

90:                                               ; preds = %29
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* %6, align 4
  br label %98

96:                                               ; preds = %90
  %97 = load i32, i32* %10, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  store i32 %99, i32* %9, align 4
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %6, align 4
  %102 = sub nsw i32 %101, %100
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %98, %89
  %104 = load i32*, i32** %2, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %107, i64 %111
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @lua_pushlstring(i32* %104, i8* %112, i32 %113)
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %124, %127
  br i1 %128, label %129, label %165

129:                                              ; preds = %103
  %130 = load i32*, i32** %2, align 8
  %131 = call i32 @lua_objlen(i32* %130, i32 1)
  store i32 %131, i32* %11, align 4
  store i32 1, i32* %4, align 4
  br label %132

132:                                              ; preds = %144, %129
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %132
  %137 = load i32*, i32** %2, align 8
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  %140 = call i32 @lua_rawgeti(i32* %137, i32 1, i32 %139)
  %141 = load i32*, i32** %2, align 8
  %142 = load i32, i32* %4, align 4
  %143 = call i32 @lua_rawseti(i32* %141, i32 1, i32 %142)
  br label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %4, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %4, align 4
  br label %132

147:                                              ; preds = %132
  %148 = load i32*, i32** %2, align 8
  %149 = call i32 @lua_pushnil(i32* %148)
  %150 = load i32*, i32** %2, align 8
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %11, align 4
  %153 = call i32 @lua_rawseti(i32* %150, i32 1, i32 %151)
  %154 = load i32, i32* %11, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %147
  %157 = load i32*, i32** %2, align 8
  %158 = call i32 @lua_rawgeti(i32* %157, i32 1, i32 1)
  %159 = load i32*, i32** %2, align 8
  %160 = call %struct.TYPE_4__* @checkPipeUD(i32* %159, i32 -1)
  store %struct.TYPE_4__* %160, %struct.TYPE_4__** %3, align 8
  %161 = load i32*, i32** %2, align 8
  %162 = call i32 @lua_pop(i32* %161, i32 1)
  br label %164

163:                                              ; preds = %147
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %3, align 8
  br label %164

164:                                              ; preds = %163, %156
  br label %165

165:                                              ; preds = %164, %103
  br label %21

166:                                              ; preds = %27
  %167 = load i32, i32* %5, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = load i32*, i32** %2, align 8
  %171 = load i32, i32* %5, align 4
  %172 = call i32 @lua_concat(i32* %170, i32 %171)
  br label %176

173:                                              ; preds = %166
  %174 = load i32*, i32** %2, align 8
  %175 = call i32 @lua_pushnil(i32* %174)
  br label %176

176:                                              ; preds = %173, %169
  ret i32 1
}

declare dso_local %struct.TYPE_4__* @checkPipeTable(i32*, i32, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local signext i8 @getsize_delim(i32*, i32, i32*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_objlen(i32*, i32) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @lua_rawseti(i32*, i32, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local %struct.TYPE_4__* @checkPipeUD(i32*, i32) #1

declare dso_local i32 @lua_concat(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
