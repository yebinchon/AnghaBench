; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_security.c_ParseStringAclToAcl.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/advapi32/wine/extr_security.c_ParseStringAclToAcl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64, i64, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i8*, i8* }

@ERROR_INVALID_ACL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@RPC_S_INVALID_STRING_UUID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Support for *_OBJECT_ACE_TYPE not implemented\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ACL too large\0A\00", align 1
@ACL_REVISION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Invalid ACE string format\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.TYPE_6__*, i32*)* @ParseStringAclToAcl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseStringAclToAcl(i8* %0, i32* %1, %struct.TYPE_6__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 4, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %15, align 8
  %17 = load i32, i32* @ERROR_INVALID_ACL, align 4
  store i32 %17, i32* %16, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @debugstr_w(i8* %18)
  %20 = call i32 @TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %5, align 4
  br label %225

25:                                               ; preds = %4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = icmp ne %struct.TYPE_6__* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 1
  %31 = bitcast %struct.TYPE_6__* %30 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %15, align 8
  br label %32

32:                                               ; preds = %28, %25
  %33 = call i32 @ParseAclStringFlags(i8** %6)
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %191, %32
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 40
  br i1 %39, label %40, label %194

40:                                               ; preds = %35
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %6, align 8
  %43 = call i32 @ParseAceStringType(i8** %6)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %45 = icmp ne %struct.TYPE_7__* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store i8* %49, i8** %52, align 8
  br label %53

53:                                               ; preds = %46, %40
  %54 = load i8*, i8** %6, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 59
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @RPC_S_INVALID_STRING_UUID, align 4
  store i32 %59, i32* %16, align 4
  br label %220

60:                                               ; preds = %53
  %61 = load i8*, i8** %6, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %6, align 8
  %63 = call i32 @ParseAceStringFlags(i8** %6)
  store i32 %63, i32* %10, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %65 = icmp ne %struct.TYPE_7__* %64, null
  br i1 %65, label %66, label %73

66:                                               ; preds = %60
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i8* %69, i8** %72, align 8
  br label %73

73:                                               ; preds = %66, %60
  %74 = load i8*, i8** %6, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 59
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %220

79:                                               ; preds = %73
  %80 = load i8*, i8** %6, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %6, align 8
  %82 = call i32 @ParseAceStringRights(i8** %6)
  store i32 %82, i32* %10, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %84 = icmp ne %struct.TYPE_7__* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %85, %79
  %90 = load i8*, i8** %6, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 59
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %220

95:                                               ; preds = %89
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %6, align 8
  br label %98

98:                                               ; preds = %103, %95
  %99 = load i8*, i8** %6, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 32
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %6, align 8
  br label %98

106:                                              ; preds = %98
  %107 = load i8*, i8** %6, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 59
  br i1 %110, label %111, label %113

111:                                              ; preds = %106
  %112 = call i32 @FIXME(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %220

113:                                              ; preds = %106
  %114 = load i8*, i8** %6, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %6, align 8
  br label %116

116:                                              ; preds = %121, %113
  %117 = load i8*, i8** %6, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 32
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i8*, i8** %6, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %6, align 8
  br label %116

124:                                              ; preds = %116
  %125 = load i8*, i8** %6, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 59
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = call i32 @FIXME(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %220

131:                                              ; preds = %124
  %132 = load i8*, i8** %6, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %6, align 8
  %134 = load i8*, i8** %6, align 8
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %136 = icmp ne %struct.TYPE_7__* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 2
  br label %141

140:                                              ; preds = %131
  br label %141

141:                                              ; preds = %140, %137
  %142 = phi i32* [ %139, %137 ], [ null, %140 ]
  %143 = call i64 @ParseStringSidToSid(i8* %134, i32* %142, i32* %11)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %162

145:                                              ; preds = %141
  br label %146

146:                                              ; preds = %158, %145
  %147 = load i8*, i8** %6, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = load i8*, i8** %6, align 8
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %154, 41
  br label %156

156:                                              ; preds = %151, %146
  %157 = phi i1 [ false, %146 ], [ %155, %151 ]
  br i1 %157, label %158, label %161

158:                                              ; preds = %156
  %159 = load i8*, i8** %6, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %6, align 8
  br label %146

161:                                              ; preds = %156
  br label %162

162:                                              ; preds = %161, %141
  %163 = load i8*, i8** %6, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 41
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %220

168:                                              ; preds = %162
  %169 = load i8*, i8** %6, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %6, align 8
  %171 = load i32, i32* %11, align 4
  %172 = sext i32 %171 to i64
  %173 = add i64 0, %172
  %174 = trunc i64 %173 to i32
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %12, align 4
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %179 = icmp ne %struct.TYPE_7__* %178, null
  br i1 %179, label %180, label %191

180:                                              ; preds = %168
  %181 = load i32, i32* %13, align 4
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  store i32 %181, i32* %184, align 8
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %186 = ptrtoint %struct.TYPE_7__* %185 to i32
  %187 = load i32, i32* %13, align 4
  %188 = add nsw i32 %186, %187
  %189 = sext i32 %188 to i64
  %190 = inttoptr i64 %189 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %190, %struct.TYPE_7__** %15, align 8
  br label %191

191:                                              ; preds = %180, %168
  %192 = load i32, i32* %14, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %14, align 4
  br label %35

194:                                              ; preds = %35
  %195 = load i32, i32* %12, align 4
  %196 = load i32*, i32** %9, align 8
  store i32 %195, i32* %196, align 4
  %197 = load i32, i32* %12, align 4
  %198 = icmp sgt i32 %197, 65535
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = call i32 @ERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %220

201:                                              ; preds = %194
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %203 = icmp ne %struct.TYPE_6__* %202, null
  br i1 %203, label %204, label %218

204:                                              ; preds = %201
  %205 = load i32, i32* @ACL_REVISION, align 4
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 4
  store i32 %205, i32* %207, align 8
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 3
  store i64 0, i64* %209, align 8
  %210 = load i32, i32* %12, align 4
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = load i32, i32* %14, align 4
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 4
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 2
  store i64 0, i64* %217, align 8
  br label %218

218:                                              ; preds = %204, %201
  %219 = load i32, i32* @TRUE, align 4
  store i32 %219, i32* %5, align 4
  br label %225

220:                                              ; preds = %199, %167, %129, %111, %94, %78, %58
  %221 = load i32, i32* %16, align 4
  %222 = call i32 @SetLastError(i32 %221)
  %223 = call i32 @WARN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %224 = load i32, i32* @FALSE, align 4
  store i32 %224, i32* %5, align 4
  br label %225

225:                                              ; preds = %220, %218, %23
  %226 = load i32, i32* %5, align 4
  ret i32 %226
}

declare dso_local i32 @TRACE(i8*, i32) #1

declare dso_local i32 @debugstr_w(i8*) #1

declare dso_local i32 @ParseAclStringFlags(i8**) #1

declare dso_local i32 @ParseAceStringType(i8**) #1

declare dso_local i32 @ParseAceStringFlags(i8**) #1

declare dso_local i32 @ParseAceStringRights(i8**) #1

declare dso_local i32 @FIXME(i8*) #1

declare dso_local i64 @ParseStringSidToSid(i8*, i32*, i32*) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @SetLastError(i32) #1

declare dso_local i32 @WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
