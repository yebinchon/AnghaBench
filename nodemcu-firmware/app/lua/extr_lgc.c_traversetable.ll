; ModuleID = '/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lgc.c_traversetable.c'
source_filename = "/home/carl/AnghaBench/nodemcu-firmware/app/lua/extr_lgc.c_traversetable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32*, i32, i64 }

@luaO_nilobject = common dso_local global i32* null, align 8
@TM_MODE = common dso_local global i32 0, align 4
@KEYWEAK = common dso_local global i32 0, align 4
@VALUEWEAK = common dso_local global i32 0, align 4
@KEYWEAKBIT = common dso_local global i32 0, align 4
@VALUEWEAKBIT = common dso_local global i32 0, align 4
@LUA_TDEADKEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)* @traversetable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @traversetable(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32*, i32** @luaO_nilobject, align 8
  store i32* %11, i32** %9, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @luaR_isrotable(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @markobject(%struct.TYPE_11__* %23, i64 %26)
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @TM_MODE, align 4
  %34 = call i32* @gfasttm(%struct.TYPE_11__* %29, i64 %32, i32 %33)
  store i32* %34, i32** %9, align 8
  br label %35

35:                                               ; preds = %28, %2
  %36 = load i32*, i32** %9, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %89

38:                                               ; preds = %35
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @ttisstring(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %89

42:                                               ; preds = %38
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @svalue(i32* %43)
  %45 = call i32* @strchr(i32 %44, i8 signext 107)
  %46 = icmp ne i32* %45, null
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %7, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @svalue(i32* %48)
  %50 = call i32* @strchr(i32 %49, i8 signext 118)
  %51 = icmp ne i32* %50, null
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %88

58:                                               ; preds = %55, %42
  %59 = load i32, i32* @KEYWEAK, align 4
  %60 = load i32, i32* @VALUEWEAK, align 4
  %61 = or i32 %59, %60
  %62 = xor i32 %61, -1
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @KEYWEAKBIT, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @VALUEWEAKBIT, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %69, %72
  %74 = call i32 @cast_byte(i32 %73)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = call i32 @obj2gco(%struct.TYPE_12__* %84)
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %58, %55
  br label %89

89:                                               ; preds = %88, %38, %35
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 1, i32* %3, align 4
  br label %198

96:                                               ; preds = %92, %89
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %117, label %99

99:                                               ; preds = %96
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %107, %99
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %6, align 4
  %106 = icmp ne i32 %104, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = call i32 @markvalue(%struct.TYPE_11__* %108, i32* %114)
  br label %103

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %116, %96
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @luaH_isdummy(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %117
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br label %129

129:                                              ; preds = %126, %123
  %130 = phi i1 [ true, %123 ], [ %128, %126 ]
  %131 = zext i1 %130 to i32
  store i32 %131, i32* %3, align 4
  br label %198

132:                                              ; preds = %117
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %134 = call i32 @sizenode(%struct.TYPE_12__* %133)
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %188, %132
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %6, align 4
  %138 = icmp ne i32 %136, 0
  br i1 %138, label %139, label %189

139:                                              ; preds = %135
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %141 = load i32, i32* %6, align 4
  %142 = call i32* @gnode(%struct.TYPE_12__* %140, i32 %141)
  store i32* %142, i32** %10, align 8
  %143 = load i32*, i32** %10, align 8
  %144 = call i32* @gkey(i32* %143)
  %145 = call i64 @ttype(i32* %144)
  %146 = load i64, i64* @LUA_TDEADKEY, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %153, label %148

148:                                              ; preds = %139
  %149 = load i32*, i32** %10, align 8
  %150 = call i32* @gval(i32* %149)
  %151 = call i64 @ttisnil(i32* %150)
  %152 = icmp ne i64 %151, 0
  br label %153

153:                                              ; preds = %148, %139
  %154 = phi i1 [ true, %139 ], [ %152, %148 ]
  %155 = zext i1 %154 to i32
  %156 = call i32 @lua_assert(i32 %155)
  %157 = load i32*, i32** %10, align 8
  %158 = call i32* @gval(i32* %157)
  %159 = call i64 @ttisnil(i32* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %153
  %162 = load i32*, i32** %10, align 8
  %163 = call i32 @removeentry(i32* %162)
  br label %188

164:                                              ; preds = %153
  %165 = load i32*, i32** %10, align 8
  %166 = call i32* @gkey(i32* %165)
  %167 = call i64 @ttisnil(i32* %166)
  %168 = icmp ne i64 %167, 0
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = call i32 @lua_assert(i32 %170)
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %164
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %176 = load i32*, i32** %10, align 8
  %177 = call i32* @gkey(i32* %176)
  %178 = call i32 @markvalue(%struct.TYPE_11__* %175, i32* %177)
  br label %179

179:                                              ; preds = %174, %164
  %180 = load i32, i32* %8, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %179
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %184 = load i32*, i32** %10, align 8
  %185 = call i32* @gval(i32* %184)
  %186 = call i32 @markvalue(%struct.TYPE_11__* %183, i32* %185)
  br label %187

187:                                              ; preds = %182, %179
  br label %188

188:                                              ; preds = %187, %161
  br label %135

189:                                              ; preds = %135
  %190 = load i32, i32* %7, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* %8, align 4
  %194 = icmp ne i32 %193, 0
  br label %195

195:                                              ; preds = %192, %189
  %196 = phi i1 [ true, %189 ], [ %194, %192 ]
  %197 = zext i1 %196 to i32
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %195, %129, %95
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @luaR_isrotable(i64) #1

declare dso_local i32 @markobject(%struct.TYPE_11__*, i64) #1

declare dso_local i32* @gfasttm(%struct.TYPE_11__*, i64, i32) #1

declare dso_local i64 @ttisstring(i32*) #1

declare dso_local i32* @strchr(i32, i8 signext) #1

declare dso_local i32 @svalue(i32*) #1

declare dso_local i32 @cast_byte(i32) #1

declare dso_local i32 @obj2gco(%struct.TYPE_12__*) #1

declare dso_local i32 @markvalue(%struct.TYPE_11__*, i32*) #1

declare dso_local i64 @luaH_isdummy(i32) #1

declare dso_local i32 @sizenode(%struct.TYPE_12__*) #1

declare dso_local i32* @gnode(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i64 @ttype(i32*) #1

declare dso_local i32* @gkey(i32*) #1

declare dso_local i64 @ttisnil(i32*) #1

declare dso_local i32* @gval(i32*) #1

declare dso_local i32 @removeentry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
