; ModuleID = '/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_core.c_gdbr_get_baddr.c'
source_filename = "/home/carl/AnghaBench/radare2/shlr/gdb/src/gdbclient/extr_core.c_gdbr_get_baddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i8* }

@UINT64_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"qOffsets\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"TextSeg=\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"DataSeg=\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Text=\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Data=\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c";Data=\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"Bss=\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @gdbr_get_baddr(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load i64, i64* @UINT64_MAX, align 8
  store i64 %7, i64* %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = icmp ne %struct.TYPE_8__* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @UINT64_MAX, align 8
  store i64 %11, i64* %2, align 8
  br label %190

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = call i32 @gdbr_lock_enter(%struct.TYPE_8__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %186

17:                                               ; preds = %12
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = call i64 @send_msg(%struct.TYPE_8__* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %17
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = call i64 @read_packet(%struct.TYPE_8__* %22, i32 0)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %27 = call i64 @send_ack(%struct.TYPE_8__* %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29, %25, %21, %17
  %35 = load i64, i64* @UINT64_MAX, align 8
  store i64 %35, i64* %5, align 8
  br label %186

36:                                               ; preds = %29
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i64 @r_str_startswith(i8* %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %98

42:                                               ; preds = %36
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8* %48, i8** %6, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i32 @isxdigit(i8 signext %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %42
  br label %186

54:                                               ; preds = %42
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @strtoull(i8* %55, i32* null, i32 16)
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* %4, align 8
  %58 = load i64, i64* %5, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i64, i64* %4, align 8
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %60, %54
  %63 = load i8*, i8** %6, align 8
  %64 = call i8* @strchr(i8* %63, i8 signext 59)
  store i8* %64, i8** %6, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %62
  br label %186

67:                                               ; preds = %62
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %6, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %67
  %75 = load i8*, i8** %6, align 8
  %76 = call i64 @r_str_startswith(i8* %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %74
  %79 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i8*, i8** %6, align 8
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8* %82, i8** %6, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load i8, i8* %83, align 1
  %85 = call i32 @isxdigit(i8 signext %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %78
  br label %186

88:                                               ; preds = %78
  %89 = load i8*, i8** %6, align 8
  %90 = call i64 @strtoull(i8* %89, i32* null, i32 16)
  store i64 %90, i64* %4, align 8
  %91 = load i64, i64* %4, align 8
  %92 = load i64, i64* %5, align 8
  %93 = icmp slt i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i64, i64* %4, align 8
  store i64 %95, i64* %5, align 8
  br label %96

96:                                               ; preds = %94, %88
  br label %97

97:                                               ; preds = %96, %74, %67
  br label %186

98:                                               ; preds = %36
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @r_str_startswith(i8* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %98
  br label %186

105:                                              ; preds = %98
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  store i8* %111, i8** %6, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = load i8, i8* %112, align 1
  %114 = call i32 @isxdigit(i8 signext %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %105
  br label %186

117:                                              ; preds = %105
  %118 = load i8*, i8** %6, align 8
  %119 = call i64 @strtoull(i8* %118, i32* null, i32 16)
  store i64 %119, i64* %4, align 8
  %120 = load i64, i64* %4, align 8
  %121 = load i64, i64* %5, align 8
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i64, i64* %4, align 8
  store i64 %124, i64* %5, align 8
  br label %125

125:                                              ; preds = %123, %117
  %126 = load i8*, i8** %6, align 8
  %127 = call i8* @strchr(i8* %126, i8 signext 59)
  store i8* %127, i8** %6, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load i8*, i8** %6, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = call i64 @r_str_startswith(i8* %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %129, %125
  %135 = load i64, i64* @UINT64_MAX, align 8
  store i64 %135, i64* %5, align 8
  br label %186

136:                                              ; preds = %129
  %137 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %138 = load i8*, i8** %6, align 8
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds i8, i8* %138, i64 %139
  store i8* %140, i8** %6, align 8
  %141 = load i8*, i8** %6, align 8
  %142 = load i8, i8* %141, align 1
  %143 = call i32 @isxdigit(i8 signext %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %136
  %146 = load i64, i64* @UINT64_MAX, align 8
  store i64 %146, i64* %5, align 8
  br label %186

147:                                              ; preds = %136
  %148 = load i8*, i8** %6, align 8
  %149 = call i64 @strtoull(i8* %148, i32* null, i32 16)
  store i64 %149, i64* %4, align 8
  %150 = load i64, i64* %4, align 8
  %151 = load i64, i64* %5, align 8
  %152 = icmp slt i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = load i64, i64* %4, align 8
  store i64 %154, i64* %5, align 8
  br label %155

155:                                              ; preds = %153, %147
  %156 = load i8*, i8** %6, align 8
  %157 = call i8* @strchr(i8* %156, i8 signext 59)
  store i8* %157, i8** %6, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  br label %186

160:                                              ; preds = %155
  %161 = load i8*, i8** %6, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %6, align 8
  %163 = load i8*, i8** %6, align 8
  %164 = call i64 @r_str_startswith(i8* %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %185

166:                                              ; preds = %160
  %167 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %168 = load i8*, i8** %6, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  store i8* %170, i8** %6, align 8
  %171 = load i8*, i8** %6, align 8
  %172 = load i8, i8* %171, align 1
  %173 = call i32 @isxdigit(i8 signext %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %166
  br label %186

176:                                              ; preds = %166
  %177 = load i8*, i8** %6, align 8
  %178 = call i64 @strtoull(i8* %177, i32* null, i32 16)
  store i64 %178, i64* %4, align 8
  %179 = load i64, i64* %4, align 8
  %180 = load i64, i64* %5, align 8
  %181 = icmp slt i64 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %176
  %183 = load i64, i64* %4, align 8
  store i64 %183, i64* %5, align 8
  br label %184

184:                                              ; preds = %182, %176
  br label %185

185:                                              ; preds = %184, %160
  br label %186

186:                                              ; preds = %185, %175, %159, %145, %134, %116, %104, %97, %87, %66, %53, %34, %16
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %188 = call i32 @gdbr_lock_leave(%struct.TYPE_8__* %187)
  %189 = load i64, i64* %5, align 8
  store i64 %189, i64* %2, align 8
  br label %190

190:                                              ; preds = %186, %10
  %191 = load i64, i64* %2, align 8
  ret i64 %191
}

declare dso_local i32 @gdbr_lock_enter(%struct.TYPE_8__*) #1

declare dso_local i64 @send_msg(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @read_packet(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @send_ack(%struct.TYPE_8__*) #1

declare dso_local i64 @r_str_startswith(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i64 @strtoull(i8*, i32*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @gdbr_lock_leave(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
