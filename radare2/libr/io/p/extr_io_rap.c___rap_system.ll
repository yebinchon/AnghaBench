; ModuleID = '/home/carl/AnghaBench/radare2/libr/io/p/extr_io_rap.c___rap_system.c'
source_filename = "/home/carl/AnghaBench/radare2/libr/io/p/extr_io_rap.c___rap_system.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* (i32, i8*)*, i32 (i8*, i8*)*, i32 }

@RMT_MAX = common dso_local global i32 0, align 4
@RMT_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Command too long\0A\00", align 1
@RMT_REPLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"RUN %d CMD(%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"[%s]=>(%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Unexpected rap cmd reply\0A\00", align 1
@ST32_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"Invalid length\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Failed to write\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_3__*, i32*, i8*)* @__rap_system to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @__rap_system(%struct.TYPE_3__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32* @RIORAP_FD(i32* %21)
  store i32* %22, i32** %11, align 8
  %23 = load i32, i32* @RMT_MAX, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %16, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %17, align 8
  %27 = load i32, i32* @RMT_CMD, align 4
  %28 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %27, i32* %28, align 16
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @RMT_MAX, align 4
  %34 = sub nsw i32 %33, 5
  %35 = icmp ugt i32 %32, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  store i32 1, i32* %18, align 4
  br label %218

38:                                               ; preds = %3
  %39 = getelementptr inbounds i32, i32* %26, i64 1
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @r_write_be32(i32* %39, i32 %40)
  %42 = getelementptr inbounds i32, i32* %26, i64 5
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @memcpy(i32* %42, i8* %43, i32 %44)
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %12, align 4
  %48 = add i32 %47, 5
  %49 = call i32 @r_socket_write(i32* %46, i32* %26, i32 %48)
  %50 = load i32*, i32** %11, align 8
  %51 = call i32 @r_socket_flush(i32* %50)
  br label %52

52:                                               ; preds = %114, %38
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @r_socket_read_block(i32* %53, i32* %26, i32 1)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i8* null, i8** %4, align 8
  store i32 1, i32* %18, align 4
  br label %218

58:                                               ; preds = %52
  %59 = getelementptr inbounds i32, i32* %26, i64 0
  %60 = load i32, i32* %59, align 16
  %61 = load i32, i32* @RMT_CMD, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %137

64:                                               ; preds = %58
  %65 = load i32, i32* @RMT_REPLY, align 4
  %66 = getelementptr inbounds i32, i32* %26, i64 0
  %67 = load i32, i32* %66, align 16
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 16
  %69 = getelementptr inbounds i32, i32* %26, i64 1
  %70 = call i32 @memset(i32* %69, i32 0, i32 4)
  %71 = load i32*, i32** %11, align 8
  %72 = getelementptr inbounds i32, i32* %26, i64 1
  %73 = call i32 @r_socket_read_block(i32* %71, i32* %72, i32 4)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 4
  br i1 %75, label %76, label %77

76:                                               ; preds = %64
  store i8* null, i8** %4, align 8
  store i32 1, i32* %18, align 4
  br label %218

77:                                               ; preds = %64
  %78 = call i8* @r_read_at_be32(i32* %26, i32 1)
  %79 = ptrtoint i8* %78 to i32
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %83, %77
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i8* @calloc(i32 1, i32 %86)
  store i8* %87, i8** %15, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = load i8*, i8** %15, align 8
  %90 = bitcast i8* %89 to i32*
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @r_socket_read_block(i32* %88, i32* %90, i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i8*, i8** %15, align 8
  %95 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %93, i8* %94)
  %96 = load i8*, i8** %15, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %112

98:                                               ; preds = %84
  %99 = load i8*, i8** %15, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i8* (i32, i8*)*, i8* (i32, i8*)** %105, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i8*, i8** %15, align 8
  %111 = call i8* %106(i32 %109, i8* %110)
  store i8* %111, i8** %14, align 8
  br label %114

112:                                              ; preds = %98, %84
  %113 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  store i8* %113, i8** %14, align 8
  br label %114

114:                                              ; preds = %112, %103
  %115 = load i8*, i8** %15, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %115, i8* %116)
  %118 = load i8*, i8** %14, align 8
  %119 = call i32 @strlen(i8* %118)
  store i32 %119, i32* %9, align 4
  %120 = load i8*, i8** %15, align 8
  %121 = call i32 @free(i8* %120)
  %122 = getelementptr inbounds i32, i32* %26, i64 1
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @r_write_be32(i32* %122, i32 %123)
  %125 = getelementptr inbounds i32, i32* %26, i64 5
  %126 = load i8*, i8** %14, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @memcpy(i32* %125, i8* %126, i32 %127)
  %129 = load i8*, i8** %14, align 8
  %130 = call i32 @free(i8* %129)
  %131 = load i32*, i32** %11, align 8
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 5
  %134 = call i32 @r_socket_write(i32* %131, i32* %26, i32 %133)
  %135 = load i32*, i32** %11, align 8
  %136 = call i32 @r_socket_flush(i32* %135)
  br label %52

137:                                              ; preds = %63
  %138 = load i32*, i32** %11, align 8
  %139 = getelementptr inbounds i32, i32* %26, i64 1
  %140 = call i32 @r_socket_read_block(i32* %138, i32* %139, i32 4)
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 4
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  store i8* null, i8** %4, align 8
  store i32 1, i32* %18, align 4
  br label %218

144:                                              ; preds = %137
  %145 = getelementptr inbounds i32, i32* %26, i64 0
  %146 = load i32, i32* %145, align 16
  %147 = load i32, i32* @RMT_CMD, align 4
  %148 = load i32, i32* @RMT_REPLY, align 4
  %149 = or i32 %147, %148
  %150 = icmp ne i32 %146, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  store i32 1, i32* %18, align 4
  br label %218

153:                                              ; preds = %144
  %154 = call i8* @r_read_at_be32(i32* %26, i32 1)
  %155 = ptrtoint i8* %154 to i32
  store i32 %155, i32* %12, align 4
  store i32 0, i32* %8, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @ST32_MAX, align 4
  %158 = icmp ugt i32 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %153
  %160 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i8* null, i8** %4, align 8
  store i32 1, i32* %18, align 4
  br label %218

161:                                              ; preds = %153
  %162 = load i32, i32* %12, align 4
  %163 = add i32 %162, 1
  %164 = call i8* @calloc(i32 1, i32 %163)
  store i8* %164, i8** %13, align 8
  %165 = load i8*, i8** %13, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %217

167:                                              ; preds = %161
  store i32 0, i32* %20, align 4
  br label %168

168:                                              ; preds = %186, %167
  %169 = load i32*, i32** %11, align 8
  %170 = load i8*, i8** %13, align 8
  %171 = bitcast i8* %170 to i32*
  %172 = load i32, i32* %20, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %20, align 4
  %177 = sub i32 %175, %176
  %178 = call i32 @r_socket_read_block(i32* %169, i32* %174, i32 %177)
  store i32 %178, i32* %19, align 4
  %179 = load i32, i32* %19, align 4
  %180 = icmp slt i32 %179, 1
  br i1 %180, label %181, label %182

181:                                              ; preds = %168
  br label %190

182:                                              ; preds = %168
  %183 = load i32, i32* %19, align 4
  %184 = load i32, i32* %20, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %20, align 4
  br label %186

186:                                              ; preds = %182
  %187 = load i32, i32* %20, align 4
  %188 = load i32, i32* %12, align 4
  %189 = icmp ult i32 %187, %188
  br i1 %189, label %168, label %190

190:                                              ; preds = %186, %181
  %191 = load i8*, i8** %13, align 8
  %192 = load i32, i32* %12, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  store i8 0, i8* %194, align 1
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 1
  %197 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %196, align 8
  %198 = icmp ne i32 (i8*, i8*)* %197, null
  br i1 %198, label %199, label %205

199:                                              ; preds = %190
  %200 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 1
  %202 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %201, align 8
  %203 = load i8*, i8** %13, align 8
  %204 = call i32 %202(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %203)
  br label %214

205:                                              ; preds = %190
  %206 = load i8*, i8** %13, align 8
  %207 = load i32, i32* %12, align 4
  %208 = call i32 @write(i32 1, i8* %206, i32 %207)
  %209 = load i32, i32* %12, align 4
  %210 = icmp ne i32 %208, %209
  br i1 %210, label %211, label %213

211:                                              ; preds = %205
  %212 = call i32 (i8*, ...) @eprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  br label %213

213:                                              ; preds = %211, %205
  br label %214

214:                                              ; preds = %213, %199
  %215 = load i8*, i8** %13, align 8
  %216 = call i32 @free(i8* %215)
  br label %217

217:                                              ; preds = %214, %161
  store i8* null, i8** %4, align 8
  store i32 1, i32* %18, align 4
  br label %218

218:                                              ; preds = %217, %159, %151, %143, %76, %57, %36
  %219 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %219)
  %220 = load i8*, i8** %4, align 8
  ret i8* %220
}

declare dso_local i32* @RIORAP_FD(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @eprintf(i8*, ...) #1

declare dso_local i32 @r_write_be32(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @r_socket_write(i32*, i32*, i32) #1

declare dso_local i32 @r_socket_flush(i32*) #1

declare dso_local i32 @r_socket_read_block(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i8* @r_read_at_be32(i32*, i32) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @write(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
