; ModuleID = '/home/carl/AnghaBench/reactos/base/services/nfsd/extr_daemon_debug.c_print_windows_access_mask.c'
source_filename = "/home/carl/AnghaBench/reactos/base/services/nfsd/extr_daemon_debug.c_print_windows_access_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"--> print_windows_access_mask: %x\0A\00", align 1
@GENERIC_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"\09GENERIC_READ\0A\00", align 1
@GENERIC_WRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"\09GENERIC_WRITE\0A\00", align 1
@GENERIC_EXECUTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"\09GENERIC_EXECUTE\0A\00", align 1
@GENERIC_ALL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"\09GENERIC_ALL\0A\00", align 1
@MAXIMUM_ALLOWED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"\09MAXIMUM_ALLOWED\0A\00", align 1
@ACCESS_SYSTEM_SECURITY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"\09ACCESS_SYSTEM_SECURITY\0A\00", align 1
@SPECIFIC_RIGHTS_ALL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"\09SPECIFIC_RIGHTS_ALL\0A\00", align 1
@STANDARD_RIGHTS_ALL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"\09STANDARD_RIGHTS_ALL\0A\00", align 1
@STANDARD_RIGHTS_REQUIRED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"\09STANDARD_RIGHTS_REQUIRED\0A\00", align 1
@SYNCHRONIZE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"\09SYNCHRONIZE\0A\00", align 1
@WRITE_OWNER = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"\09WRITE_OWNER\0A\00", align 1
@WRITE_DAC = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"\09WRITE_DAC\0A\00", align 1
@READ_CONTROL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [15 x i8] c"\09READ_CONTROL\0A\00", align 1
@DELETE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"\09DELETE\0A\00", align 1
@FILE_READ_DATA = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"\09FILE_READ_DATA\0A\00", align 1
@FILE_LIST_DIRECTORY = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [22 x i8] c"\09FILE_LIST_DIRECTORY\0A\00", align 1
@FILE_WRITE_DATA = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [18 x i8] c"\09FILE_WRITE_DATA\0A\00", align 1
@FILE_ADD_FILE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [16 x i8] c"\09FILE_ADD_FILE\0A\00", align 1
@FILE_APPEND_DATA = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [19 x i8] c"\09FILE_APPEND_DATA\0A\00", align 1
@FILE_ADD_SUBDIRECTORY = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [24 x i8] c"\09FILE_ADD_SUBDIRECTORY\0A\00", align 1
@FILE_CREATE_PIPE_INSTANCE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [28 x i8] c"\09FILE_CREATE_PIPE_INSTANCE\0A\00", align 1
@FILE_READ_EA = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [15 x i8] c"\09FILE_READ_EA\0A\00", align 1
@FILE_WRITE_EA = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [16 x i8] c"\09FILE_WRITE_EA\0A\00", align 1
@FILE_EXECUTE = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [15 x i8] c"\09FILE_EXECUTE\0A\00", align 1
@FILE_TRAVERSE = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [16 x i8] c"\09FILE_TRAVERSE\0A\00", align 1
@FILE_DELETE_CHILD = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [20 x i8] c"\09FILE_DELETE_CHILD\0A\00", align 1
@FILE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [23 x i8] c"\09FILE_READ_ATTRIBUTES\0A\00", align 1
@FILE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [24 x i8] c"\09FILE_WRITE_ATTRIBUTES\0A\00", align 1
@FILE_ALL_ACCESS = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [18 x i8] c"\09FILE_ALL_ACCESS\0A\00", align 1
@FILE_GENERIC_READ = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [20 x i8] c"\09FILE_GENERIC_READ\0A\00", align 1
@FILE_GENERIC_WRITE = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [21 x i8] c"\09FILE_GENERIC_WRITE\0A\00", align 1
@FILE_GENERIC_EXECUTE = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [23 x i8] c"\09FILE_GENERIC_EXECUTE\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_windows_access_mask(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %241

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @GENERIC_READ, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @GENERIC_WRITE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @GENERIC_EXECUTE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @GENERIC_ALL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @MAXIMUM_ALLOWED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %38
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @ACCESS_SYSTEM_SECURITY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @SPECIFIC_RIGHTS_ALL, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @SPECIFIC_RIGHTS_ALL, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %52
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @STANDARD_RIGHTS_ALL, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @STANDARD_RIGHTS_ALL, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %60
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @STANDARD_RIGHTS_REQUIRED, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @STANDARD_RIGHTS_REQUIRED, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %68
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @SYNCHRONIZE, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %76
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @WRITE_OWNER, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %83
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @WRITE_DAC, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  br label %97

97:                                               ; preds = %95, %90
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @READ_CONTROL, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %97
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @DELETE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0))
  br label %111

111:                                              ; preds = %109, %104
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @FILE_READ_DATA, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %111
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @FILE_LIST_DIRECTORY, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %118
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @FILE_WRITE_DATA, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %125
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @FILE_ADD_FILE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %132
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @FILE_APPEND_DATA, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %139
  %147 = load i32, i32* %4, align 4
  %148 = load i32, i32* @FILE_ADD_SUBDIRECTORY, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %146
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @FILE_CREATE_PIPE_INSTANCE, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.21, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %153
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* @FILE_READ_EA, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  br label %167

167:                                              ; preds = %165, %160
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* @FILE_WRITE_EA, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0))
  br label %174

174:                                              ; preds = %172, %167
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* @FILE_EXECUTE, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0))
  br label %181

181:                                              ; preds = %179, %174
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* @FILE_TRAVERSE, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0))
  br label %188

188:                                              ; preds = %186, %181
  %189 = load i32, i32* %4, align 4
  %190 = load i32, i32* @FILE_DELETE_CHILD, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0))
  br label %195

195:                                              ; preds = %193, %188
  %196 = load i32, i32* %4, align 4
  %197 = load i32, i32* @FILE_READ_ATTRIBUTES, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  %201 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0))
  br label %202

202:                                              ; preds = %200, %195
  %203 = load i32, i32* %4, align 4
  %204 = load i32, i32* @FILE_WRITE_ATTRIBUTES, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %202
  %208 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0))
  br label %209

209:                                              ; preds = %207, %202
  %210 = load i32, i32* %4, align 4
  %211 = load i32, i32* @FILE_ALL_ACCESS, align 4
  %212 = and i32 %210, %211
  %213 = load i32, i32* @FILE_ALL_ACCESS, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %209
  %216 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0))
  br label %217

217:                                              ; preds = %215, %209
  %218 = load i32, i32* %4, align 4
  %219 = load i32, i32* @FILE_GENERIC_READ, align 4
  %220 = and i32 %218, %219
  %221 = load i32, i32* @FILE_GENERIC_READ, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %217
  %224 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0))
  br label %225

225:                                              ; preds = %223, %217
  %226 = load i32, i32* %4, align 4
  %227 = load i32, i32* @FILE_GENERIC_WRITE, align 4
  %228 = and i32 %226, %227
  %229 = load i32, i32* @FILE_GENERIC_WRITE, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %233

231:                                              ; preds = %225
  %232 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i64 0, i64 0))
  br label %233

233:                                              ; preds = %231, %225
  %234 = load i32, i32* %4, align 4
  %235 = load i32, i32* @FILE_GENERIC_EXECUTE, align 4
  %236 = and i32 %234, %235
  %237 = load i32, i32* @FILE_GENERIC_EXECUTE, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %233
  %240 = call i32 (i32, i8*, ...) @dprintf(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.32, i64 0, i64 0))
  br label %241

241:                                              ; preds = %7, %239, %233
  ret void
}

declare dso_local i32 @dprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
